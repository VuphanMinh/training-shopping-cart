class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy
  has_many :product_details, through: :line_items

  # LOGIC
  def sub_total
    sum = 0
    self.line_items.each do |line_item|
      sum+= line_item.total_price
    end
    return sum
  end

  # Return total quantity of cart
  def total_quantity
    total_quantity = 0
    line_items.each do |line_item|
      total_quantity += line_item.quantity
    end
    total_quantity
  end
end
