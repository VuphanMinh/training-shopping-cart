class Admin::CustomersController < ApplicationController
  layout 'layouts/design_admin'
  before_action :authenticate_user!
  def index
    @customers =  Customer.all
    .where("email LIKE :search", search: "%#{params[:search]}%")
    .page(params[:page]).per(12)
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      flash[:Success] = "Success"
      redirect_to admin_customers_path
    else
      render :new
    end
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.assign_attributes(customer_params)
    if @customer.save
      flash[:success] = "Success"
      redirect_to admin_customers_path
    else
      render :edit
    end
  end

  def destroy
    Customer.find(params[:id]).destroy
    flash[:success] = "Customer is deleted"
    redirect_to admin_customers_path
  end

  private

  def customer_params
    params
    .require(:customer)
    .permit(
     :phone, :email
    )
  end
end
