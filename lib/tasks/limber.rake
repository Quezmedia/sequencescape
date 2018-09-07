# frozen_string_literal: true

# Disabling rubocop temporarily to preserve nice comments format
# rubocop:disable all

# We'll try and do this through the API with the live version
namespace :limber do
  desc 'Setup all the necessary limber records'
  task setup: ['limber:create_submission_templates', 'limber:create_searches', 'limber:create_tag_templates']

  desc 'Create Barcode Printer Types'
  task create_barcode_printer_types: :environment do
    BarcodePrinterType384DoublePlate.find_or_create_by!(name: '384 Well Plate Double',
                                                        printer_type_id: 10,
                                                        label_template_name: 'plate_6mm_double')
  end

  desc 'Create the Limber cherrypick plates'
  task create_plates: :environment do
    purposes = [{ name: 'LB Cherrypick',
                  size: 96 },
                { name: 'scRNA Stock',
                  size: 96 },
                { name: 'LBR Cherrypick',
                  size: 96 },
                { name: 'scRNA-384 Stock',
                  size: 384 },
                { name: 'GBS Stock',
                  size: 384 },
                # GnT Pipeline requires UAT
                # { name: 'GnT Stock',
                #   size: 96 }
                ]

    purposes.each do |purpose|
      name = purpose[:name]
      size = purpose[:size]
      # Caution: This is provided to help setting up limber development environments
      next if Purpose.where(name: name).exists?
      if Rails.env.production?
        abort(%(
          #{name} plate purpose is missing.
          In production, this should be generated through Limber itself.
          Please ensure the latest version of Limber has been deployed before
          activating the submission templates. Limber should run:
          bundle exec rake config:generate automatically on deployment.
        ))
      end
      puts "Caution! Limber purposes do not exist. Creating #{name} plate."
      puts 'Other purposes will be generated by Limber'
      PlatePurpose::Input.create!(
        name: name,
        target_type: 'Plate',
        stock_plate: true,
        default_state: 'pending',
        barcode_printer_type_id: BarcodePrinterType.find_by(name: "#{size} Well Plate"),
        cherrypickable_target: true,
        cherrypick_direction: 'column',
        size: size,
        asset_shape: AssetShape.default,
        barcode_for_tecan: 'ean13_barcode'
      )
    end

    unless Purpose.where(name: 'LB Lib PCR-XP').exists?
      PlatePurpose.create!(
        name: 'LB Lib PCR-XP',
        target_type: 'Plate',
        default_state: 'pending',
        barcode_printer_type: BarcodePrinterType.find_by(name: '96 Well Plate'),
        cherrypickable_target: false,
        size: 96,
        asset_shape: AssetShape.find_by(name: 'Standard'),
        barcode_for_tecan: 'ean13_barcode'
      )
    end
  end

  desc 'Create the limber request types'
  task create_request_types: [:environment, :create_plates] do
    puts 'Creating request types...'
    ActiveRecord::Base.transaction do
      %w[WGS LCMB].each do |prefix|
        Limber::Helper::RequestTypeConstructor.new(prefix).build!
      end
      Limber::Helper::RequestTypeConstructor.new(
        'PCR Free',
        default_purposes: ['PF Cherrypicked']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'ISC',
        request_class: 'Pulldown::Requests::IscLibraryRequest',
        library_types: ['Agilent Pulldown']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'GBS',
        request_class: 'IlluminaHtp::Requests::GbsRequest',
        library_types: ['GBS'],
        default_purposes: ['GBS Stock'],
        for_multiplexing: true
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'RNAA',
        library_types: ['RNA PolyA'],
        default_purposes: ['LBR Cherrypick']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'RNAR',
        library_types: ['RNA Ribo'],
        default_purposes: ['LBR Cherrypick']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'RNAAG',
        library_types: ['RNA Poly A Globin'],
        default_purposes: ['LBR Cherrypick']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'RNARG',
        library_types: ['RNA Ribo Globin'],
        default_purposes: ['LBR Cherrypick']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'ReISC',
        request_class: 'Pulldown::Requests::ReIscLibraryRequest',
        library_types: ['Agilent Pulldown'],
        default_purposes: ['LB Lib PCR-XP']
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'scRNA',
        library_types: ['scRNA',
                       # 'GnT scRNA'  # Wating for UAT
                       ],
        default_purposes: ['scRNA Stock'
                          # 'GnT Stock'  # Wating for UAT
                          ]
      ).build!

      Limber::Helper::RequestTypeConstructor.new(
        'scRNA-384',
        library_types: ['scRNA 384'],
        default_purposes: ['scRNA-384 Stock']
      ).build!

      # GnT Pipeline requires UAT
      # Limber::Helper::RequestTypeConstructor.new(
      #   'GnT Picoplex',
      #   library_types: ['GnT Picoplex'],
      #   default_purposes: ['GnT Stock']
      # ).build!

      # Limber::Helper::RequestTypeConstructor.new(
      #   'GnT MDA',
      #   library_types: ['GnT MDA'],
      #   default_purposes: ['GnT Stock']
      # ).build!

      unless RequestType.where(key: 'limber_multiplexing').exists?
        RequestType.create!(
          name: 'Limber Multiplexing',
          key: 'limber_multiplexing',
          request_class_name: 'Request::Multiplexing',
          for_multiplexing: true,
          asset_type: 'Well',
          order: 2,
          initial_state: 'pending',
          billable: false,
          product_line: ProductLine.find_by(name: 'Illumina-Htp'),
          request_purpose: :standard,
          target_purpose: Purpose.find_by(name: 'LB Lib Pool Norm')
        )
      end
    end
  end

  desc 'Create the limber searches'
  task create_searches: [:environment] do
    Search::FindPlates.create_with(default_parameters: { limit: 30 }).find_or_create_by!(name: 'Find plates')
    Search::FindTubes.create_with(default_parameters: { limit: 30 }).find_or_create_by!(name: 'Find tubes')
  end

  desc 'Create tag plate lots and templates'
  task create_tag_templates: :environment do
    tp  = QcablePlatePurpose.find_or_create_by!(name: 'Tag Plate', target_type: 'Plate', default_state: 'created')
    rp  = QcablePlatePurpose.find_or_create_by!(name: 'Reporter Plate', target_type: 'Plate', default_state: 'created')
    itt = QcableTubePurpose.find_or_create_by!(name: 'Tag 2 Tube', target_type: 'Tube')
    pstp = QcablePlatePurpose.find_or_create_by!(name: 'Pre Stamped Tag Plate', target_type: 'Plate', default_state: 'available')
    btp  = QcablePlatePurpose.find_or_create_by!(name: 'Tag Plate - 384', target_type: 'Plate', default_state: 'available', size: 384)
    LotType.find_or_create_by!(name: 'IDT Tags',         template_class: 'TagLayoutTemplate', target_purpose: tp)
    LotType.find_or_create_by!(name: 'IDT Reporters',    template_class: 'PlateTemplate',     target_purpose: rp)
    LotType.find_or_create_by!(name: 'Tag 2 Tubes',      template_class: 'Tag2LayoutTemplate', target_purpose: itt)
    LotType.find_or_create_by!(name: 'Pre Stamped Tags', template_class: 'TagLayoutTemplate', target_purpose: pstp)
    LotType.find_or_create_by!(name: 'Tag 2 Tubes',      template_class: 'Tag2LayoutTemplate', target_purpose: itt)
    LotType.find_or_create_by!(name: 'Pre Stamped Tags - 384', template_class: 'TagLayoutTemplate', target_purpose: btp)
  end

  desc 'Create the limber submission templates'
  task create_submission_templates: [:environment, :create_request_types, :create_barcode_printer_types, 'sequencing:novaseq:setup'] do
    puts 'Creating submission templates....'

    base_list = Limber::Helper::ACCEPTABLE_SEQUENCING_REQUESTS
    base_with_novaseq = base_list + ['illumina_htp_novaseq_6000_paired_end_sequencing']
    base_without_hiseq = base_list - ['illumina_b_hiseq_x_paired_end_sequencing']
    st_params = {
      'WGS' => {
        sequencing_list: base_with_novaseq
      },
      'ISC' => {
        sequencing_list: base_list
      },
      'ReISC' => {
        sequencing_list: base_list
      },
      'scRNA' => {
        sequencing_list: base_without_hiseq
      },
      'scRNA-384' => {
        sequencing_list: base_without_hiseq
      },
      'RNAA' => {
        sequencing_list: base_without_hiseq
      },
      'RNAR' => {
        sequencing_list: base_without_hiseq
      },
      'RNAAG' => {
        sequencing_list: base_without_hiseq
      },
      'RNARG' => {
        sequencing_list: base_without_hiseq
      },
      'PCR Free' => {
        sequencing_list: base_with_novaseq,
        catalogue_name: 'PFHSqX'
      }
      # GnT pipeline requires UAT
      # 'GnT Picoplex' => {
      #   sequencing_list: base_without_hiseq
      # },
      # # Use Limber::Helper::LibraryOnlyTemplateConstructor for this one.
      # 'GnT MDA' => {
      #   sequencing_list: ['illumina_b_hiseq_x_paired_end_sequencing']
      # }
    }

    ActiveRecord::Base.transaction do
      st_params.each do |prefix, params|
        catalogue_name = (params[:catalogue_name] || prefix)
        catalogue = ProductCatalogue.create_with(selection_behaviour: 'SingleProduct')
                                    .find_or_create_by!(name: catalogue_name)
        Limber::Helper::TemplateConstructor.new(prefix: prefix,
                                                catalogue: catalogue,
                                                sequencing: params[:sequencing_list]).build!
      end

      lcbm_catalogue = ProductCatalogue.create_with(selection_behaviour: 'SingleProduct').find_or_create_by!(name: 'LCMB')
      Limber::Helper::LibraryOnlyTemplateConstructor.new(prefix: 'LCMB', catalogue: lcbm_catalogue).build!
      gbs_catalogue = ProductCatalogue.create_with(selection_behaviour: 'SingleProduct').find_or_create_by!(name: 'GBS')
      Limber::Helper::LibraryOnlyTemplateConstructor.new(prefix: 'GBS', catalogue: gbs_catalogue).build!
      catalogue = ProductCatalogue.create_with(selection_behaviour: 'SingleProduct').find_or_create_by!(name: 'Generic')
      Limber::Helper::TemplateConstructor.new(prefix: 'Multiplexing', catalogue: catalogue).build!

      unless SubmissionTemplate.find_by(name: 'MiSeq for GBS')
        SubmissionTemplate.create!(
          name: 'MiSeq for GBS',
          submission_class_name: 'AutomatedOrder',
          submission_parameters: {
            request_type_ids_list: [RequestType.where(key: 'miseq_sequencing').pluck(:id)]
          },
          product_line: ProductLine.find_by!(name: 'Illumina-HTP'),
          product_catalogue: ProductCatalogue.find_by!(name: 'Generic')
        )
      end
    end
  end
end

# rubocop:enable all
