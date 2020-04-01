class Admin::ProductDetailsController < ApplicationController
  layout 'layouts/design_admin'
  before_action :authenticate_user!

  def new
    @product_detail = ProductDetail.new
  end

  def create
    @product_detail = ProductDetail.new(product_detail_params)
    if @product_detail.save
      flash[:success] = "Success"
      redirect_to admin_product_cat_path(product_detail_params['product_cat_id'])
    else
      render :new
    end
  end

  def edit
    @product_detail = ProductDetail.find(params[:id])
  end

  def update
    @product_detail = ProductDetail.find(params[:id])
    @product_detail.assign_attributes(product_detail_params)
    if @product_detail.save
      flash[:success] = "Success"
      redirect_to admin_product_cat_path(product_detail_params['product_cat_id'])
    else
      render :edit
    end
  end

  def destroy
    product_detail = ProductDetail.find(params[:id])
    product_detail.destroy
    flash[:success] = "Product categories deleted"
    redirect_to admin_product_cat_path(product_detail.product_cat_id)
  end

  private

  def product_detail_params
    params
      .require(:product_detail)
      .permit(
        :name, :description, :details, :price, :discount, :product_cat_id
      )
  end
end
