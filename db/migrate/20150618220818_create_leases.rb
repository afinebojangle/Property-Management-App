class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :user_id
      t.integer :unit_id
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end
  end
end
