class CreateProductDetail < ActiveRecord::Migration[5.0]
  def change
    create_table :product_details do |t|
      t.string :name
      t.string :description
      t.string :details 
      t.integer :price 
      t.integer :discount
      t.timestamps
    end
  end
end
