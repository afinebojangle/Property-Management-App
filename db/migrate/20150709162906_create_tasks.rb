class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :start_date
      t.datetime :completed
      t.integer :taskable_id
      t.string  :taskable_type

      t.timestamps null: false
    end
    add_index :tasks, :start_date
    add_index :tasks, :taskable_id
  end
end
