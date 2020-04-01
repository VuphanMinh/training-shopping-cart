class RenameTypeToTypeProduct < ActiveRecord::Migration[5.0]
  def change
    rename_column :product_images, :type, :product_type
  end
end
