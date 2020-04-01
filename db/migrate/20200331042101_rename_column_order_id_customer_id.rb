class RenameColumnOrderIdCustomerId < ActiveRecord::Migration[5.0]
  def change
    remove_column :line_items, :order_id
    add_column :line_items, :customer_id, :integer
    add_foreign_key :line_items, :customers
  end
end
