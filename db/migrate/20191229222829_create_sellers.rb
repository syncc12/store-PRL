class CreateSellers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :name
      t.integer :categories
      t.integer :products
      t.string :description
      t.string :origin
      t.timestamps
    end
  end
end
