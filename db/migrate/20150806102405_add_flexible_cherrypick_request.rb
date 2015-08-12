#This file is part of SEQUENCESCAPE is distributed under the terms of GNU General Public License version 1 or later;
#Please refer to the LICENSE and README files for information on licensing and authorship of this file.
#Copyright (C) 2015 Genome Research Ltd.
class AddFlexibleCherrypickRequest < ActiveRecord::Migration
  def self.up
    ActiveRecord::Base.transaction do
      RequestType.create!({
        :asset_type =>"Well",
        :billable =>false,
        :deprecated =>false,
        :for_multiplexing =>false,
        :initial_state =>"pending",
        :key =>"flexible_cherrypick",
        :morphology =>0,
        :multiples_allowed =>false,
        :name =>"Flexible Cherrypick",
        :no_target_asset =>false,
        :order =>1,
        :request_class_name =>"FelxibleCherrypickRequest",
        :workflow_id => Submission::Workflow.find_by_name("Microarray genotyping")
      })
    end
  end

  def self.down
    ActiveRecord::Base.transaction do
      RequestType.find_by_name("Flexible Cherrypick").destroy
    end
  end
end
