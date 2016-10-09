# This file is part of SEQUENCESCAPE; it is distributed under the terms of
# GNU General Public License version 1 or later;
# Please refer to the LICENSE and README files for information on licensing and
# authorship of this file.
# Copyright (C) 2012,2015 Genome Research Ltd.

class Io::Purpose < Core::Io::Base
  set_model_for_input(::Purpose)
  set_json_root(:purpose)

  define_attribute_and_json_mapping(%Q{
                     name  => name
  })
end
