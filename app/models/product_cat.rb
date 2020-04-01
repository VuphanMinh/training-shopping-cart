class ProductCat < ApplicationRecord
    # Relations
    has_many :product_detail

    #Validates
    validates :name, :typeProduct, presence: true

end
