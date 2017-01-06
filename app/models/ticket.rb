class Ticket < ActiveRecord::Base
	has_many :cancelled_tickets
	belongs_to :airline
	belongs_to :passenger

	before_create :generate_booking_number

	private

	def generate_booking_number
		while flag==0
			booking_number = /\w{3}\w{3}/
			if booking_number = 
			self.booking_number = "ABC123"
		end
	end
end
