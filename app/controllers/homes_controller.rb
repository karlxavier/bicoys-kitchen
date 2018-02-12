class HomesController < ApplicationController
  def index
  	@plans = Plan.plan_menus
  end
end
