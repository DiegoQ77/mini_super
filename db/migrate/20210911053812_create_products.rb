class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.decimal :unit_price
      t.decimal :sale_price
      t.string :image
      t.integer :provider

      t.timestamps
    end
  end
end
