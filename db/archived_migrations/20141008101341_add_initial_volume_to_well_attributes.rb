#This file is part of SEQUENCESCAPE is distributed under the terms of GNU General Public License version 1 or later;
# Please refer to the LICENSE and README files for information on licensing and
# authorship of this file.
# Copyright (C) 2014 Genome Research Ltd.
class AddInitialVolumeToWellAttributes < ActiveRecord::Migration
  def self.up
    add_column :well_attributes, :initial_volume, :float
  end

  def self.down
    add_column :well_attributes, :initial_volume
  end
end
