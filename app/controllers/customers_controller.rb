class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customers = Customer.new
  end

  def create
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
