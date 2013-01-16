class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.integer :medication_request_id
      t.string :name

      t.timestamps
    end
  end
end
