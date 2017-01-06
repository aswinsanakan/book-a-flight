class Ticket < ActiveRecord::Base
	has_many :cancelled_tickets
	belongs_to :airline
	belongs_to :passenger
end
