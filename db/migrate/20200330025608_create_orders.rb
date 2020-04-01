class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :email
      t.text :address
      t.integer :total
      t.integer :quantity
      t.integer :product_details_id, :null => false, :references => [:product_details, :id]
      t.timestamps
    end
  end
end
