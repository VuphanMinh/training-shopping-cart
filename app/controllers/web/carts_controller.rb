class Web::CartsController < ApplicationController
  layout 'layouts/design_web'
  def show
    @cart = @current_cart
  end

  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    redirect_to web_root_path
  end

end