class ProductDetail < ApplicationRecord
    # Relations
    belongs_to :product_cat
    has_many :product_images
    has_many :line_items, dependent: :destroy

    # validates
    validates :name, :price, presence: true
    validates :price, numericality: { only_integer: true }

    # default_scope { where(active: true) }
end
