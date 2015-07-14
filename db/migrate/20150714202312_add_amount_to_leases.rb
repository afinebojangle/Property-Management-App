class AddAmountToLeases < ActiveRecord::Migration
  def change
    add_column :leases, :amount, :decimal, :precision => 10, :scale => 2
  end
end
