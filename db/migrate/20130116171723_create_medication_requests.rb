class CreateMedicationRequests < ActiveRecord::Migration
  def change
    create_table :medication_requests do |t|
      t.boolean :published
      t.text :response_summary

      t.timestamps
    end
  end
end
