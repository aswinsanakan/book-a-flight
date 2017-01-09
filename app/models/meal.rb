class Meal < ActiveRecord::Base
	has_many :ticket_meals
	has_many :tickets, through: :ticket_meals
end
