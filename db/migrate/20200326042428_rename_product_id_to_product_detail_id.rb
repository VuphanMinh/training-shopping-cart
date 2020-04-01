class RenameProductIdToProductDetailId < ActiveRecord::Migration[5.0]
  def change
    rename_column :product_images, :product_id, :product_detail_id
  end
end
