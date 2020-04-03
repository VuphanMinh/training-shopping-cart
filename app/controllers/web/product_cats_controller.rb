class Web::ProductCatsController < ApplicationController
  layout 'layouts/design_web'
  before_action :authenticate_customer!

  def show
    @product_cats = ProductCat.all
    @product_details = ProductDetail.all.where(product_cat_id: params[:id])
    .where("name LIKE :search", search: "%#{params[:search]}%")
    .page(params[:page]).per(12)

    @products = Product.all
  end
end
