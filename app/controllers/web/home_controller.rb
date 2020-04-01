class Web::HomeController < ApplicationController
  layout 'layouts/design_web'
  before_action :authenticate_customer!

  def index
    @product_cats = ProductCat.all
    @product_details = ProductDetail.all
    .where("name LIKE :search", search: "%#{params[:search]}%")
    .page(params[:page]).per(12)

    @products = Product.all
  end
end
