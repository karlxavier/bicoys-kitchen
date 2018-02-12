class Order < ApplicationRecord
	belongs_to :order_status
	belongs_to :user_id

	has_many :order_items
	has_many :menus, through: :order_items
end
