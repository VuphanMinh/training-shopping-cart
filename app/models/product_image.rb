class ProductImage < ActiveRecord::Base
  # Relations
  belongs_to :product_detail

  # upload-images
  # mount_uploader :url_img, ProductImagesUploader

  validates :url_img, presence: true
end
