class PlansController < ApplicationController
  def index
  	@weekdays = Weekday.all
  	@plans = Plan.plan_menus
  end
end
