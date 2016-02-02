#This file is part of SEQUENCESCAPE is distributed under the terms of GNU General Public License version 1 or later;
#Please refer to the LICENSE and README files for information on licensing and authorship of this file.
#Copyright (C) 2015 Genome Research Ltd.

# This is a serialized dump of submission templates. It is STRONGLY recommended that you don't try and change this file directly
# but instead re-dump the submission templates.
[{:name=>"Illumina-C - Cherrypick Internally",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for Fluidigm",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :request_types=>
     ["pick_to_sta", "pick_to_sta2", "pick_to_snp_type", "pick_to_fluidigm"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"Cherrypick for pulldown - Pulldown WGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown WGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypick for pulldown - Pulldown WGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown WGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for pulldown - Pulldown WGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_by_id=>-2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown WGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypick for pulldown - Pulldown WGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_by_id=>-2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown WGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_wgs",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown WGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>["pulldown_wgs", "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown WGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>
     ["pulldown_wgs", "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown WGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>["pulldown_wgs", "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown WGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100"},
    :request_types=>["pulldown_wgs", "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for pulldown - Pulldown SC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown SC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypick for pulldown - Pulldown SC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown SC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for pulldown - Pulldown SC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown SC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for pulldown - Pulldown SC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown SC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_sc",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown SC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_sc", "illumina_a_single_ended_sequencing"],
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown SC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["pulldown_sc", "illumina_a_single_ended_hi_seq_sequencing"],
     :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :workflow=>"short_read_sequencing"}},
 {:name=>"Multiplexed PacBio",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["pacbio_tagged_library_prep", "pacbio_multiplexed_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown SC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_sc", "illumina_a_paired_end_sequencing"],
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :workflow=>"short_read_sequencing"}},
 {:name=>"MiSeq for TagQC",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["qc_miseq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown SC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>{:info_differential=>1,
    :request_options=>{"fragment_size_required_to"=>"400",
      "fragment_size_required_from"=>"100",
      "library_type"=>"Agilent Pulldown"},
      :request_types=>["pulldown_sc", "hiseq_paired_end_sequencing"],
      :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for pulldown - Pulldown ISC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown ISC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypick for pulldown - Pulldown ISC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown ISC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Cherrypick for pulldown - Pulldown ISC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown ISC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypick for pulldown - Pulldown ISC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-A - Cherrypick for pulldown - Pulldown ISC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_isc",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown ISC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown"},
    :request_types=>["pulldown_isc", "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown ISC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["pulldown_isc", "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown ISC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown", "pre_capture_plex_level" => 8},
    :request_types=>["pulldown_isc", "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown ISC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_options=>{"fragment_size_required_to"=>"400", "fragment_size_required_from"=>"100", "library_type"=>"Agilent Pulldown", "pre_capture_plex_level" => 8},
    :request_types=>["pulldown_isc", "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Library creation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["library_creation", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Library creation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["library_creation", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Library creation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["library_creation", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Library creation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["library_creation", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Library creation - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["library_creation", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Multiplexed library creation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["multiplexed_library_creation", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Multiplexed library creation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["multiplexed_library_creation", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Multiplexed library creation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["multiplexed_library_creation", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Multiplexed library creation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["multiplexed_library_creation", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Multiplexed library creation - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["multiplexed_library_creation", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown library creation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_library_creation", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown library creation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["pulldown_library_creation", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown library creation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_library_creation", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown library creation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["pulldown_library_creation", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown Multiplex Library Preparation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_multiplexing", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Pulldown Multiplex Library Preparation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:50 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["pulldown_multiplexing", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown Multiplex Library Preparation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_multiplexing", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Pulldown Multiplex Library Preparation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_multiplexing", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown Multiplex Library Preparation - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_multiplexing", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Library Prep - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sample_prep", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Library Prep - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sample_prep", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Library Prep - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sample_prep", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Library Prep - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sample_prep", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Library Prep - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sample_prep", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Sequencing - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sequencing", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Sequencing - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sequencing", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Sequencing - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sequencing", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Sequencing - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sequencing", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio Sequencing - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pacbio_sequencing", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown WGS - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_wgs", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown SC - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_sc", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Pulldown ISC - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["pulldown_isc", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"MiSeq sequencing - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["miseq_sequencing", "single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"MiSeq sequencing - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["miseq_sequencing", "single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"MiSeq sequencing - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["miseq_sequencing", "paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"MiSeq sequencing - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceded_at=>"Mon Oct 05 15:58:51 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["miseq_sequencing", "hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"MiSeq sequencing - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["miseq_sequencing", "illumina_c_cherrypick"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation", "illumina_c_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation",
      "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation", "illumina_c_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation", "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - HiSeq V4 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library creation - HiSeq V4 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_v4_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Multiplexed Library Creation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-C - Multiplexed Library Creation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Multiplexed Library Creation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-C - Multiplexed Library Creation - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-C - Multiplexed Library Creation - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-C - Multiplexed Library Creation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-C - Multiplexed Library Creation - HiSeq V4 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-C - Multiplexed Library Creation - HiSeq V4 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_v4_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed Library Creation - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Multiplexed Library Creation - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed Library Creation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Multiplexed Library Creation - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Multiplexed Library Creation - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Multiplexed Library Creation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Multiplexed Library Creation - HiSeq V4 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Multiplexed Library Creation - HiSeq X Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :superceded_at=>"Mon Oct 05 15:58:52 UTC 2015",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_multiplexed_library_creation",
      "illumina_b_hiseq_x_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - HiSeq V4 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - HiSeq X Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_a_hiseq_x_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"DNA QC - Cherrypick - Genotyping",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["dna_qc", "cherrypick", "genotyping"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"DNA QC - Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["dna_qc", "cherrypick"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"Cherrypick - Genotyping",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["cherrypick", "genotyping"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"DNA QC",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["dna_qc"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"Cherrypick",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["cherrypick"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"Cherrypicking - Genotyping",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["cherrypick", "genotyping"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"Microarray genotyping",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>6,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["dna_qc", "cherrypick", "genotyping"],
    :workflow=>"microarray_genotyping"}},
 {:name=>"Cherrypicking for Pulldown",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>["cherrypick_for_pulldown"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypicking for Pulldown - Pulldown Multiplex Library Preparation - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_multiplexing",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Cherrypicking for Pulldown - Pulldown Multiplex Library Preparation - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names found on plates"],
    :request_types=>
     ["cherrypick_for_pulldown",
      "pulldown_multiplexing",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"PacBio",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :asset_input_methods=>
     ["select an asset group", "enter a list of sample names"],
    :request_types=>["pacbio_sample_prep", "pacbio_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Cherrypicked - Multiplexed WGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_std",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_b_std", "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Cherrypicked - Multiplexed WGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_std",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_std", "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Cherrypicked - Multiplexed WGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_std",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_b_std", "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Cherrypicked - Multiplexed WGS - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_std",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_std", "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Cherrypicked - Multiplexed WGS - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_std",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_std", "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>
   "Illumina-B - Cherrypicked - Multiplexed WGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_std",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_std", "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Cherrypicked - Pooled PATH - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pooled PATH - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled PATH - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pooled PATH - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Cherrypicked - Pooled PATH - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pooled PATH - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled PATH - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pooled PATH - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled PATH - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pooled PATH - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled PATH - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pooled PATH - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Cherrypicked - Pippin PATH - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pippin PATH - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin PATH - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pippin PATH - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Cherrypicked - Pippin PATH - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pippin PATH - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin PATH - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pippin PATH - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin PATH - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pippin PATH - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin PATH - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Pippin PATH - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB PATH"}},
 {:name=>"Illumina-B - Cherrypicked - Pooled HWGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pooled HWGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled HWGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pooled HWGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Cherrypicked - Pooled HWGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pooled HWGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled HWGS - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pooled HWGS - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled HWGS - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pooled HWGS - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pooled HWGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pooled HWGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Cherrypicked - Pippin HWGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pippin HWGS - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin HWGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pippin HWGS - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Cherrypicked - Pippin HWGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pippin HWGS - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin HWGS - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pippin HWGS - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin HWGS - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pippin HWGS - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>
   "Illumina-B - Cherrypicked - Pippin HWGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-B - Pippin HWGS - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILB HWGS"}},
 {:name=>"Illumina-A - Cherrypicked - HTP ISC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - HTP ISC - Single ended sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_single_ended_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>
   "Illumina-A - Cherrypicked - HTP ISC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - HTP ISC - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - Cherrypicked - HTP ISC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - HTP ISC - Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>
   "Illumina-A - Cherrypicked - HTP ISC - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - HTP ISC - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>
   "Illumina-A - Cherrypicked - HTP ISC - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - HTP ISC - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - Cherrypicked - HTP ISC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_pulldown",
      "illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - HTP ISC - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_a_shared",
      "illumina_a_isc",
      "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ILA ISC"}},
 {:name=>"Illumina-A - Pulldown SC - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :superceeded_by_id => -2,
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_pulldown_sc", "illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - Pulldown ISC - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :superceeded_by_id => -2,
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_pulldown_isc", "illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - Pooled - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :superceeded_by_id => -2,
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_shared",
      "illumina_a_pool",
      "illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-A - HTP ISC - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :superceeded_by_id => -2,
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_isc", "illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"ISC Repool - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_re_isc", "illumina_a_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"ISC Repool - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_re_isc", "illumina_a_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"ISC Repool - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_re_isc", "illumina_a_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"ISC Repool - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_re_isc", "illumina_a_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"ISC Repool - MiSeq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>["illumina_a_re_isc", "illumina_a_miseq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"ISC Repool - HiSeq V4 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_re_isc", "illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"ISC Repool - HiSeq X Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_re_isc", "illumina_a_hiseq_x_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"ReISC"}},
 {:name=>"Illumina-A - Pulldown WGS - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-A",
  :superceeded_by_id => -2,
  :product_catalogue=>"Generic",
  :superceeded_by_id => -2,
  :submission_parameters=>
   {:request_types=>
     ["illumina_a_pulldown_wgs", "illumina_a_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Multiplexed WGS - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-B",
  :superceeded_by_id => -2,
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_b_std", "illumina_b_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Pooled PATH - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-B",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Pooled HWGS - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-B",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_b_shared",
      "illumina_b_pool",
      "illumina_b_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Pippin PATH - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-B",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-B - Pippin HWGS - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-B",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_b_shared",
      "illumina_b_pippin",
      "illumina_b_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"HiSeq-X library creation and sequencing",
  :submission_class_name=>"FlexibleSubmission",
  :product_line=>"Illumina-B",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_b_shared",
      "illumina_htp_library_creation",
      "illumina_htp_strip_tube_creation",
      "illumina_b_hiseq_x_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"HSqX"}},
 {:name=>"HiSeq-X library re-sequencing",
  :submission_class_name=>"FlexibleSubmission",
  :product_line=>"Illumina-B",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_htp_strip_tube_creation", "hiseq_x_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"HSqX"}},
 {:name=>"Illumina-C - General PCR - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :superceded_by=>"Illumina-C - General PCR - HiSeq v4 sequencing PE",
  :superceded_at=>"Mon Oct 05 15:59:05 UTC 2015",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_pcr", "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - General no PCR - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :superceded_by=>"Illumina-C - General no PCR - HiSeq v4 sequencing PE",
  :superceded_at=>"Mon Oct 05 15:59:05 UTC 2015",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_nopcr", "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library Creation - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :superceded_by=>"Illumina-C - Library Creation - HiSeq v4 sequencing PE",
  :superceded_at=>"Mon Oct 05 15:59:05 UTC 2015",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Multiplexed Library Creation - HiSeq v4 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :superceded_by=>
   "Illumina-C - Multiplexed Library Creation - HiSeq v4 sequencing PE",
  :superceded_at=>"Mon Oct 05 15:59:05 UTC 2015",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - General PCR - HiSeq v4 sequencing SE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_pcr", "illumina_c_hiseq_v4_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - General PCR - HiSeq v4 sequencing PE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_pcr", "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - General no PCR - HiSeq v4 sequencing SE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_nopcr", "illumina_c_hiseq_v4_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - General no PCR - HiSeq v4 sequencing PE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_nopcr", "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library Creation - HiSeq v4 sequencing SE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_v4_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Library Creation - HiSeq v4 sequencing PE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_library_creation",
      "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Multiplexed Library Creation - HiSeq v4 sequencing SE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_v4_single_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - Multiplexed Library Creation - HiSeq v4 sequencing PE",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_multiplexed_library_creation",
      "illumina_c_hiseq_v4_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C - General PCR - HiSeq X 10 sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:request_types=>
     ["illumina_c_pcr", "illumina_b_hiseq_x_paired_end_sequencing"],
    :workflow=>"short_read_sequencing"}},
 {:name=>"Illumina-C Cherrypicked - General PCR - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General PCR - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Cherrypicked - General PCR - MiSeq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_miseq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General PCR - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General PCR - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General PCR - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General PCR - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General PCR - MiSeq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_miseq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General PCR - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General PCR - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General no PCR - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General no PCR - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Cherrypicked - General no PCR - MiSeq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_miseq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General no PCR - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>
   "Illumina-C Cherrypicked - General no PCR - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General no PCR - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General no PCR - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General no PCR - MiSeq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_miseq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General no PCR - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C General no PCR - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["cherrypick_for_illumina_c",
      "illumina_c_pcr",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Multiplex - HiSeq Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexing", "illumina_c_hiseq_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Multiplex - Single ended hi seq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexing", "illumina_c_single_ended_hi_seq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Multiplex - MiSeq sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>["illumina_c_multiplexing", "illumina_c_miseq_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Multiplex - HiSeq 2500 Paired end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexing",
      "illumina_c_hiseq_2500_paired_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C Multiplex - HiSeq 2500 Single end sequencing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>5,
    :request_types=>
     ["illumina_c_multiplexing",
      "illumina_c_hiseq_2500_single_end_sequencing"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}},
 {:name=>"Illumina-C - General PCR - No multiplexing",
  :submission_class_name=>"LinearSubmission",
  :product_line=>"Illumina-C",
  :product_catalogue=>"Generic",
  :submission_parameters=>
   {:info_differential=>1,
    :request_types=>["illumina_c_pcr_no_pool"],
    :workflow=>"short_read_sequencing",
    :order_role=>"PCR"}}
].each {|params| SubmissionSerializer.construct!(params) }
