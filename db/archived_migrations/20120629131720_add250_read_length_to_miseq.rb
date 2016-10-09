#This file is part of SEQUENCESCAPE is distributed under the terms of GNU General Public License version 1 or later;
# Please refer to the LICENSE and README files for information on licensing and
# authorship of this file.
# Copyright (C) 2012 Genome Research Ltd.
class Add250ReadLengthToMiseq < ActiveRecord::Migration
  def self.up
    change_templates do |parameters|
      parameters[:selection] << '250'
    end
  end

  def self.down
    change_templates do |parameters|
      parameters.delete('250')
    end
  end

  def self.change_templates(&block)
    ActiveRecord::Base.transaction do
      SubmissionTemplate.find(:all, :conditions => 'name LIKE "%MiSeq%"').each do |submission_template|
        field_infos = submission_template.submission_parameters[:input_field_infos] or next
        field_infos.select do |variable|
          variable.ivars["display_name"] == "Read length"
        end.each do |variable|
          yield(variable.ivars["parameters"])
        end
        submission_template.save!
      end
    end
  end
end
