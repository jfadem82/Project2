class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  def index
    @customers = Customer.all.order('id ASC')
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def show
    if @customer.products
      @products = @customer.products
    end
  end

  def edit
  end

  def update
    if @customer.update_attributes(customer_params)
      redirect_to customers_path(@customer)
    else
      render :edit
    end
  end

  def destroy
    @customer.destroy
    redirect_to root_path
  end

  private
  def customer_params
    params.require(:customer).permit(:first_name, :last_name, :gender, :email)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

end
