class AddTypeToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :type, :string
  end
end
