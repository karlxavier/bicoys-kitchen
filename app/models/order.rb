class Order < ApplicationRecord
	# belongs_to :order_status
	belongs_to :user

	has_many :order_items
	has_many :menus, through: :order_items

	has_many :plans, through: :order_items
	has_many :p_orders, -> { order('id asc') } , through: :order_items, source: :plan
	has_many :pm_orders, through: :p_orders

	has_many :plan_meals, through: :p_orders
	has_many :meal_types, through: :plan_meals

	has_many :weekdays, through: :p_orders

	has_many :identities, through: :user

	scope :order_menus, -> (user_id) { includes(:p_orders, :weekdays, :pm_orders, :menus, :meal_types, :order_items).where(user_id: user_id).first }

	before_create :set_order_status
	before_save :update_subtotal
  	before_save :update_total

	validates :subtotal, :total, presence: true

	def subtotal    
	    order_items.collect { |oi| oi.valid? ? (oi.quantity * oi.unit_price) : 0 }.sum
	end

	def total
    	subtotal
  	end

	private
	  def set_order_status
	    self.order_status_id = 1
	  end

	  def update_subtotal
	    self[:subtotal] = subtotal    
	  end

	  def update_total
	    self[:total] = total
	  end

end
