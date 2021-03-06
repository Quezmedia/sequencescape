# frozen_string_literal: true

# Autogenerated migration to convert qc_decision_qcables to utf8mb4
class MigrateQcDecisionQcablesToUtf8mb4 < ActiveRecord::Migration[5.1]
  include MigrationExtensions::EncodingChanges

  def change
    change_encoding('qc_decision_qcables', from: 'utf8', to: 'utf8mb4')
  end
end
