class MealMenu < ApplicationRecord
	belongs_to :plan_meal
	belongs_to :menu
end
