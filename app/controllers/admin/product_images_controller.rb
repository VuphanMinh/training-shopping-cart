class Admin::ProductImagesController < ApplicationController
  layout 'layouts/design_admin'
  before_action :authenticate_user!
  def new
    @images = ProductImage.where(product_detail_id: params[:product_detail_id])
    @product_image = ProductImage.new()
  end

  def create
    @product_image = ProductImage.new(product_image_params)
    if @product_image.save
      flash[:success] = "Success"
      redirect_to new_admin_product_image_path(:product_detail_id => @product_image.product_detail_id)
    end
  end

  def destroy
    product_image = ProductImage.find(params[:id])
    product_image.destroy

    flash[:success] = "Product categories deleted"
    redirect_to new_admin_product_image_path(:product_detail_id => product_image.product_detail_id)
  end

  private

  def product_image_params
    params
      .require(:product_image)
      .permit(
        :product_detail_id, :product_type, :url_img
      )
  end
end
