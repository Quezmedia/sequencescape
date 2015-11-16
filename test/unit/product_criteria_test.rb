#This file is part of SEQUENCESCAPE is distributed under the terms of GNU General Public License version 1 or later;
#Please refer to the LICENSE and README files for information on licensing and authorship of this file.
#Copyright (C) 2015 Genome Research Ltd.

require "test_helper"

class ProductCriteriaTest < ActiveSupport::TestCase
  context "A product criteria" do
    should_belong_to :product
    should_validate_presence_of :product, :stage, :behaviour

    setup do
      @product_a = Factory :product
      @criteria_a = Factory :product_criteria, :product => @product_a
    end


    should 'only allow one active criteria per product per stage' do
      assert_raise(ActiveRecord::RecordInvalid) { Factory :product_criteria, :product => @product_a }
    end

    should 'allow multiple active criteria with different stages' do
      @criteria_b = Factory :product_criteria, :product => @product_a, :stage => 'another_stage'
      assert @criteria_b.valid?
    end

    should 'allow products with the same name if one is deprecated' do
      @criteria_a.deprecated_at = Time.now
      @criteria_a.save
      @criteria_2 = Factory :product_criteria, :product => @product_a
      assert @criteria_2.valid?
    end

    should 'automatically version criteria' do
      assert_equal 1, @criteria_a.version
      @criteria_a.deprecated_at = Time.now
      @criteria_a.save
      @criteria_b = Factory :product_criteria, :product => @product_a
      assert_equal 2, @criteria_b.version
    end

    should 'not be destroyable' do
      # ActiveRecord::RecordNotDestroyed is the Rails4 exception for this
      # Added here as Rails 2 is a bit useless with appropriate exceptions
      assert_raise(ActiveRecord::RecordNotDestroyed) { @criteria_a.destroy }
    end

    should 'be deprecatable' do
      @criteria_a.deprecate!
      assert @criteria_a.deprecated?
      assert @criteria_a.deprecated_at != nil
    end

    should 'be otherwise immutable' do
      @criteria_a.configuration = {:something=>'else'}
      assert_raise(ActiveRecord::RecordNotSaved) { @criteria_a.save! }
    end

    should 'serialize configuration' do
      assert @criteria_a.configuration.is_a?(Hash)
      @criteria_a.reload
      assert @criteria_a.configuration.is_a?(Hash)
    end

    should 'validate wells with the provided criteria' do
      well_attribute = Factory :well_attribute, :concentration => 800, :measured_volume => 100
      well = Factory :well, :well_attribute => well_attribute
      assesment = @criteria_a.assess(well)
      assert assesment.is_a?(ProductCriteria::Basic)
      assert assesment.passed?
    end

    should 'be able to take metrics' do
      well = {
        :concentration => 800,
        :measured_volume => 100,
        :total_micrograms => 90
      }
      assesment = @criteria_a.assess(well)
      assert assesment.is_a?(ProductCriteria::Basic)
      assert assesment.passed?
    end
  end

end
