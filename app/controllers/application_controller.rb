class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
  	Order.order_menus(current_user.id) || Order.new
  end

end
