class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_order

  def current_order
  	Order.where(user_id: current_user.id).first || Order.new
  end

end
