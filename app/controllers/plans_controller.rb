class PlansController < ApplicationController
	before_action :authenticate_user!

  def index
  	@weekdays = Weekday.all
  	@plans = Plan.plan_menus

  	@order_item = current_order.order_items.new
  end
end
