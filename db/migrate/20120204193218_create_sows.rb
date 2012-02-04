class CreateSows < ActiveRecord::Migration
  def change
    create_table :sows do |t|
      t.string :category
      t.decimal :price
      t.references :customer

      t.timestamps
    end
    add_index :sows, :customer_id
  end
end
