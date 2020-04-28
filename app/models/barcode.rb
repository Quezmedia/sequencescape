# frozen_string_literal: true

# A barcode is an identifier for a piece of labware which is attached via a
# printed label. Barcodes may either be generated by Sequencescape, or may get
# supplied externally. In some cases labware may have more than one barcode assigned.
#
# @author [grl]
#
class Barcode < ApplicationRecord
  require 'sanger_barcode_format'
  require 'sanger_barcode_format/legacy_methods'
  extend SBCF::LegacyMethods

  belongs_to :asset, optional: false, class_name: 'Labware'
  before_validation :serialize_barcode

  after_commit :broadcast_barcode

  # Caution! Do not adjust the index of existing formats.
  enum format: {
    sanger_ean13: 0,
    infinium: 1,
    fluidigm: 2,
    external: 3,
    aker_barcode: 4,
    cgap: 5,
    sanger_code39: 6,
    fluidx_barcode: 7,
    uk_biocentre_v1: 8,
    uk_biocentre_v2: 9,
    uk_biocentre_unid: 10,
    alderly_park_v1: 11,
    alderly_park_v2: 12
  }

  # Barcode formats which may be submitted via sample manifests
  FOREIGN_BARCODE_FORMATS = %i[cgap fluidx_barcode fluidigm
                               uk_biocentre_v1 uk_biocentre_v2 uk_biocentre_unid
                               alderly_park_v1 alderly_park_v2].freeze

  validate :barcode_valid?
  validates :barcode, uniqueness: { scope: :format, case_sensitive: false }

  scope(:sanger_barcode, lambda do |prefix, number|
    human_barcode = SBCF::SangerBarcode.from_prefix_and_number(prefix, number).human_barcode
    where(format: %i[sanger_ean13 sanger_code39], barcode: human_barcode)
  end)
  scope :for_search_query, ->(*input) { where(barcode: Barcode.extract_barcodes(input)).includes(:asset) }

  delegate :=~, to: :handler
  delegate_missing_to :handler

  def self.build_sanger_ean13(attributes)
    build_sanger_barcode(attributes, format: :sanger_ean13)
  end

  def self.build_sanger_code39(attributes)
    build_sanger_barcode(attributes, format: :sanger_code39)
  end

  def self.build_sanger_barcode(attributes, format:)
    # We need to symbolize our hash keys to allow them to get passed in to named arguments.
    safe_attributes = attributes.slice(:number, :prefix, :human_barcode, :machine_barcode).symbolize_keys
    new(format: format, barcode: SBCF::SangerBarcode.new(safe_attributes).human_barcode)
  end

  # Extract barcode from user input
  def self.extract_barcode(barcode)
    [barcode.to_s].tap do |barcodes|
      barcodes << SBCF::SangerBarcode.from_user_input(barcode.to_s).human_barcode
    end.compact.uniq
  end

  # Returns the barcode format matching the supplied barcode
  def self.matching_barcode_format(possible_barcode)
    FOREIGN_BARCODE_FORMATS.detect do |cur_format|
      bc = Barcode.new(format: cur_format, barcode: possible_barcode)
      bc.handler.valid?
    end
  end

  def self.exists_for_format?(barcode_format, search_barcode)
    Barcode.exists?(format: barcode_format, barcode: search_barcode)
  end

  def self.extract_barcodes(barcodes)
    barcodes.flatten.each_with_object([]) do |source_bc, store|
      next if source_bc.blank?

      store.concat(Barcode.extract_barcode(source_bc))
    end
  end

  def handler
    @handler ||= handler_class.new(barcode)
  end

  def handler_class_name
    format.classify
  end

  # If the barcode changes, we'll need a new handler. This allows handlers themselves to be immutable.
  def barcode=(new_barcode)
    @handler = nil
    super
  end

  def sanger_barcode?
    sanger_ean13? || sanger_code39?
  end

  private

  def barcode_valid?
    errors.add(:barcode, "is not an acceptable #{format} barcode") unless handler.valid?
  end

  def handler_class
    Barcode::FormatHandlers.const_get(handler_class_name, false)
  end

  def broadcast_barcode
    Messenger.new(template: 'BarcodeIO', root: 'barcode', target: self).broadcast
  end
end
