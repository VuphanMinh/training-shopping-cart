class RenameProductIdLineItems < ActiveRecord::Migration[5.0]
  def change
    rename_column :line_items, :product_id, :product_detail_id
  end
end
