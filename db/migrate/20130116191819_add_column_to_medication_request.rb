class AddColumnToMedicationRequest < ActiveRecord::Migration
  def change
    add_column :medication_requests, :user_id, :integer
  end
end
