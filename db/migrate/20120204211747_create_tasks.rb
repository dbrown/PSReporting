class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.text :duration
      t.references :sow

      t.timestamps
    end
    add_index :tasks, :sow_id
  end
end
