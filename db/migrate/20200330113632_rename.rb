class Rename < ActiveRecord::Migration[5.0]
  def change
    rename_column :line_items, :product_details_id, :product_id
  end
end
