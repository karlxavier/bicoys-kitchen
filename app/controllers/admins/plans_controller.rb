class Admins::PlansController < ApplicationController
	before_action :authenticate_admin!

  	def index
  		@plans = Plan.plan_menus
  		@menus = Menu.all
  	end

  	def show
  		@plan = Plan.find(params[:id])
  	end

  	def new
  		@plan = Plan.new
  	end

  	def create
  		@plan = Plan.new(plans_params)
  		if @plan.save
  			redirect_to admins_plans_path
  		else
  			render :new
  		end
  	end

  	def edit
  		@plan = Plan.find(params[:id])
  	end

  	def update
  		@plan = Plan.find(params[:id])
  		if @plan.update_attributes(plans_params)
  			redirect_to admins_plans_path
  		else
  			render :edit
  		end
  	end

  	private

  		def plans_params
  			params.require(:plan).permit(:weekday_id, :plan_status_id, :plan_for_date)
  		end
end
