class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.decimal :price
      t.integer :qty_available
      t.string :seller
      t.string :description
      t.string :category
      t.timestamps
    end
  end
end
