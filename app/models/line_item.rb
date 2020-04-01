class LineItem < ActiveRecord::Base
  belongs_to :product_detail
  belongs_to :cart
  # belongs_to :order, optional: true
  belongs_to :customer
  # LOGIC
  def total_price
    self.quantity * self.product_detail.price
  end
end
