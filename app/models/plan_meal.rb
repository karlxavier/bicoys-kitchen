class PlanMeal < ApplicationRecord
	belongs_to :plan
	belongs_to :meal_type

	has_many :order_items
	has_many :orders, through: :order_items

	# has_many :menus, through: :order_items

	has_many :meal_menus
	has_many :menus, through: :meal_menus

	has_many :p_menus, through: :order_items, source: :menu

end
