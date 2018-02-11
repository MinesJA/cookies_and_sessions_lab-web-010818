class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :cart


  def cart
    session[:cart] ||= []
    #returns either a cart returned by session or an empty array
  end



end
