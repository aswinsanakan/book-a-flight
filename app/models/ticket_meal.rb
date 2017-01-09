class TicketMeal < ActiveRecord::Base
	belongs_to :ticket
	belongs_to :meal
end
