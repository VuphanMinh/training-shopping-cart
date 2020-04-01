class AddColumnOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :total
    remove_column :orders, :quantity
    remove_column :orders, :product_detail_id

    add_column :orders, :pay_method, :string
  end
end
