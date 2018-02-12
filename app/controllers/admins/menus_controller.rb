class Admins::MenusController < ApplicationController
	before_action :authenticate_admin!

	def index
		@menus = Menu.all
	end

	def show
		@menu = Menu.find(params[:id])
	end

	def new
		@menu = Menu.new
	end

	def create
		@menu = Menu.new(menus_params)

		if @menu.save
			redirect_to admins_menus_path
		else
			render :new
		end

	end

	def edit
		@menu = Menu.find(params[:id])
	end

	def update
		@menu = Menu.find(params[:id])
		if @menu.update_attributes(menus_params)
			redirect_to admins_menus_path
		else
			render :edit
		end
	end

	private

		def menus_params
			params.require(:menu).permit(:name, :description, :price, :image)
		end

end
