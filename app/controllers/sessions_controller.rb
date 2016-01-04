class SessionsController < ApplicationController
  def new

  end

  def create
  	customer = Customer.find_by_email(params[:login][:email])
  	if customer && customer.authenticate(params[:login][:password])
  		session[:customer_id] = customer.id.to_s
  		redirect_to customer_path(customer)
  	else
  		render :new
  	end
  end

  def destroy
  	session[:customer_id] = nil
  	redirect_to root_url
  end
end
