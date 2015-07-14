class CreateLeases < ActiveRecord::Migration
  def change
    create_table :leases do |t|
      t.integer :user_id
      t.integer :unit_id
      t.date :start_date
      t.date :end_date

      t.timestamps null: false
    end
  end
end
