class CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  before_action :authorize, only: [:show]
  def index
      @customers = Customer.all.order('id ASC')
  end

  def new
      @customer = Customer.new
  end

  def create
      @customer = Customer.new(customer_params)

      if @customer.save
      redirect_to customer_path(@customer)
      session[:customer_id] = @customer.id.to_s
      else
      render :new
    end
  end

  def show
      @post = @customer.posts.new
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
      params.require(:customer).permit(:first_name, :last_name, :gender, :email, :password, :password_confirmation)
  end

  def set_customer
      @customer = Customer.find(params[:id])
  end

end
