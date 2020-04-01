class Admin::LineItemsController < ApplicationController
  layout 'layouts/design_admin'
  before_action :authenticate_user!

  def index
    @line_items = LineItem.joins(:customer).group("customer_id, cart_id")
    .where("email LIKE :search", search: "%#{params[:search]}%")
    .order(created_at: :desc)
    .page(params[:page]).per(12)
  end

  def show
    line_item = LineItem.find(params[:id])
    @cart = Cart.find(line_item.cart_id)
  end
end
