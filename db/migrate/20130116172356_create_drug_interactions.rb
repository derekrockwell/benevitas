class CreateDrugInteractions < ActiveRecord::Migration
  def change
    create_table :drug_interactions do |t|
      t.integer :drug_id
      t.integer :interacts_with_id
      t.text :summary

      t.timestamps
    end
  end
end
