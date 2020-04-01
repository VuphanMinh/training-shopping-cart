class Admin::ProductCatsController < ApplicationController
  layout 'layouts/design_admin'
  before_action :authenticate_user!

  def index
    @product_cats = ProductCat.all
    .where("name LIKE :search", search: "%#{params[:search]}%")
    .page(params[:page]).per(12)
  end

  def new
    @product_cat = ProductCat.new
  end

  def create
    @product_cat = ProductCat.new(product_cat_params)
    if @product_cat.save
      flash[:success] = "Success"
      redirect_to admin_product_cats_path
    else
      render :new
    end
  end

  def edit
    @product_cat = ProductCat.find(params[:id])
  end

  def update
    @product_cat = ProductCat.find(params[:id])
    @product_cat.assign_attributes(product_cat_params)
    if @product_cat.save
      flash[:success] = "Success"
      redirect_to admin_product_cats_path
    else
      render :edit
    end
  end

  def show
    @product_details = ProductDetail.where(product_cat_id: params[:id])
    .where("name LIKE :search", search: "%#{params[:search]}%")
    .page(params[:page]).per(12)
  end

  def destroy
    product_detail = ProductDetail.where(product_cat_id: params[:id])
    if product_detail.present?
      flash[:error] = "Can not delete product categories"
    else
      ProductCat.find(params[:id]).destroy
      flash[:success] = "Product categories deleted"
    end
    redirect_to admin_product_cats_path
  end

  private

  def product_cat_params
    params
      .require(:product_cat)
      .permit(
        :name, :typeProduct, :description
      )
  end
end
