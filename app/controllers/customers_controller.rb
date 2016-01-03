class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(params.require( :customer ).permit( :first_name, :last_name, :gender, :email ))

    if @customer.save
      redirect_to customers_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
