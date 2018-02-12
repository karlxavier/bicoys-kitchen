class Admins::PlanMealsController < ApplicationController
	before_action :authenticate_admin!

	def index

	end

	# def create
	# 	@plan_meal = PlanMeal.new
	# 	@plan_meal.plan_id = params[:plan_id]
	# 	@plan_meal.meal_type_id = params[:meal_type_id]
	# 	@plan_meal.menu_id = params[:menu_id]

	# 	if @plan_meal.save
			
	# 	else
			
	# 	end
	# end
end
