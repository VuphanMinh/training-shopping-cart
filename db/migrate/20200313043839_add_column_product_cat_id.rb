class AddColumnProductCatId < ActiveRecord::Migration[5.0]
  def change
    add_column :product_details, :product_cat_id, :integer
    add_foreign_key :product_details, :product_cats
  end
end
