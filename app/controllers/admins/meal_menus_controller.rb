class Admins::MealMenusController < ApplicationController
	before_action :authenticate_admin!

	def create
		@meal_menu = MealMenu.new
		@meal_menu.plan_meal_id = params[:plan_meal_id]
		@meal_menu.menu_id = params[:menu_id]

		if @meal_menu.save
			redirect_to admins_plans_path
		else
			redirect_to admins_plans_path
		end
	end

	def destroy
		@meal_menu = MealMenu.where(plan_meal_id: params[:plan_meal_id], menu_id: params[:menu_id]).first

		@meal_menu.destroy
		redirect_to admins_plans_path
	end

end
