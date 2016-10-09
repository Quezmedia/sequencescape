# This file is part of SEQUENCESCAPE; it is distributed under the terms of
# GNU General Public License version 1 or later;
# Please refer to the LICENSE and README files for information on licensing and
# authorship of this file.
# Copyright (C) 2007-2011,2015 Genome Research Ltd.

class ::Io::Well < ::Core::Io::Base
  set_model_for_input(::Well)
  set_json_root(:well)
  # set_eager_loading { |model| model }   # TODO: uncomment and add any named_scopes that do includes you need

  define_attribute_and_json_mapping(%Q{
              state  => state
    map.description  => location
           aliquots  => aliquots
  })
end
