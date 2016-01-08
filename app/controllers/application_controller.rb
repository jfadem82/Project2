class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_customer, :logged_in?, :authorize

  def current_customer
  	@current_customer ||= Customer.find_by_id(session[:customer_id]) if session[:customer_id]
  end

  def logged_in?
  	  !!current_customer
  end

  def authorize
  	  redirect_to login_path unless logged_in?
  end

  
end
