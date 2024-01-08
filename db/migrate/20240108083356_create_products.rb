class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :model
      t.text :description
      t.integer :price, , null: false, default: 0

      t.timestamps
    end
  end
end
