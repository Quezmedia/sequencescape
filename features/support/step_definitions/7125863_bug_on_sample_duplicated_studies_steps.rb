# frozen_string_literal: true

# minitest/autorun doesn't seem to be sufficient to load in Minitest::Skip which is required
# for assert_raises.
require 'minitest/spec'

def bind_sample_to_study(name_sample, name_study)
  sample = Sample.find_by(name: name_sample) or raise StandardError, "Cannot find sample #{name_sample.inspect}"
  study  = Study.find_by(name: name_study) or raise StandardError, "Cannot find study #{name_study.inspect}"
  sample.studies << study
end

Given /^the sample named "([^"]*)" belongs to the study named "([^"]*)"$/ do |name_sample, name_study|
  bind_sample_to_study(name_sample, name_study)
end

When /^I try to set the sample named "([^"]*)" as belonging to the study named "([^"]*)"$/ do |sample_name, study_name|
  assert_raises(ActiveRecord::RecordInvalid) do
    bind_sample_to_study(sample_name, study_name)
  end
end

Then /^the sample "([^"]*)" should belong to the study named "([^"]*)" only once$/ do |sample_name, study_name|
  sample = Sample.find_by(name: sample_name) or raise StandardError, "Cannot find sample #{sample_name.inspect}"
  study  = Study.find_by(name: study_name) or raise StandardError, "Cannot find study #{study_name.inspect}"
  sample_study_bindings = sample.studies.select { |x| x == study }
  assert_equal(1, sample_study_bindings.size, 'looks like the sample is bound too many times')
end

Then /^(?:|I )should see one link with text "([^"]*)"$/ do |regexp|
  step %Q{I should see 1 links with text "#{regexp}"}
end

Then /^(?:|I )should see (\d+) links with text "([^"]*)"$/ do |count, regexp|
  assert has_xpath?('//a', count: count.to_i, text: /^#{regexp}$/)
end
