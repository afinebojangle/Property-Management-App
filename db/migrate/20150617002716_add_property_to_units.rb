class AddPropertyToUnits < ActiveRecord::Migration
  def change
    add_column :units, :property_id, :integer
    add_index :units, :property_id
  end
end
