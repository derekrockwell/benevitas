class AddColumnToDrugInteractions < ActiveRecord::Migration
  def change
    add_column :drug_interactions, :interaction_id, :integer
  end
end
