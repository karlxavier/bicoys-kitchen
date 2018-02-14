class HomesController < ApplicationController
  def index
  	@plans = Plan.plan_menus
  end

  def privacy_policy
  end
end
