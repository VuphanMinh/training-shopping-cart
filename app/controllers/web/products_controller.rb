class Web::ProductsController < ApplicationController
  layout 'layouts/design_web'
  before_action :authenticate_customer!

  def show
    @product_detail = ProductDetail.find(params[:id])
  end
end
