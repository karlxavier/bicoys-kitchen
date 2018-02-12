class Menu < ApplicationRecord
	has_many :meal_menus
	has_many :order_items

	validates :name, :price, presence: true

	mount_uploader :image, MenuImageUploader

end
