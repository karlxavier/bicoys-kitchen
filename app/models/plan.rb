class Plan < ApplicationRecord
	belongs_to :weekday
	belongs_to :plan_status

	# has_many :order_items
	# has_many :orders, through: :order_items

	has_many :plan_meals
	has_many :menus, through: :plan_meals

	has_many :meal_types, through: :plan_meals


	validates :weekday_id, presence: true

	scope :plan_menus, -> { includes(:plan_meals, :meal_types, :weekday ,:menus) }

end
