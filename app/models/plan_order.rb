class PlanOrder < ApplicationRecord
	belongs_to :order
	belongs_to :weekday

	
end
