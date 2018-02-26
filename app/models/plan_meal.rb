class PlanMeal < ApplicationRecord
	belongs_to :plan
	belongs_to :meal_type

	has_many :order_items
	has_many :orders, through: :order_items

	has_many :meal_menus
	has_many :menus, through: :meal_menus
end


# Order -> PlanOrder -> OrderItem -> Menu

# PlanOrder
# - order_id
# - weekday_id

# OrderItem
# - plan_order_id
# - menu_id



# Plan -> PlanMeal -> MealMenu -> Menu