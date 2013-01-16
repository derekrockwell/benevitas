class RenameTypeToName < ActiveRecord::Migration
  def change
    rename_column :drugs, :type, :medication_type
  end
end
