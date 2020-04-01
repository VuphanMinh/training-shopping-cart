class AddColumnTotalProductDetail < ActiveRecord::Migration[5.0]
  def change
    add_column :product_details, :total, :integer
  end
end
