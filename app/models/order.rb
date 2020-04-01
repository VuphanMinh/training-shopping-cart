class Order < ApplicationRecord
  has_many :products
  has_many :line_items, dependent: :destroy
end
