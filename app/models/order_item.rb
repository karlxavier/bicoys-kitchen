class OrderItem < ApplicationRecord
	belongs_to :plan
	belongs_to :plan_meal
	belongs_to :menu
	belongs_to :order
end
