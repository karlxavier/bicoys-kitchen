class PlanMeal < ApplicationRecord
	belongs_to :plan
	belongs_to :meal_type

	has_many :orders
	has_many :meal_menus
	has_many :menus, through: :meal_menus
end