class PooledCherrypickRequest < CustomerRequest
  # Returns a list of attributes that must match for any given pool.
  # We don't want to place any restrictions on Cherrypicking (Yet).
  def shared_attributes
    ''
  end

  def on_started
    transfer_aliquots
  end

  def transfer_aliquots
    target_asset.aliquots << aliquots_for_transfer
  end

  private

  def aliquots_for_transfer
    asset.aliquots.map do |aliquot|
      aliquot.dup.tap do |clone|
        clone.study_id   = initial_study_id   || aliquot.study_id
        clone.project_id = initial_project_id || aliquot.project_id
      end
    end.reject do |candidate_aliquot|
      target_asset.aliquots.any? { |existing_aliquot| existing_aliquot.equivalent?(candidate_aliquot) }
    end
  end
end
