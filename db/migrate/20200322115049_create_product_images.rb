class CreateProductImages < ActiveRecord::Migration[5.0]
  def change
    create_table :product_images do |t|
      t.integer :product_id, :null => false, :references => [:product_details, :id]
      t.string :type
      t.string :url_img
      t.string :thumb
      t.integer :note
      t.timestamps
    end
  end
end
