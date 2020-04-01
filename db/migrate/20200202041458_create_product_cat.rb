class CreateProductCat < ActiveRecord::Migration[5.0]
  def change
    create_table :product_cats do |t|
      t.string :name
      t.string :typeProduct
      t.string :description
      t.timestamps
    end
  end
end
