class Airline < ActiveRecord::Base
	has_many :tickets
	has_one :airline_ticket

	after_create :calculate_total_tickets

	private

	def calculate_total_tickets
		total_tickets = 26**3 * 36**3 - 36**3  - 5
		AirlineTicket.create(airline_id: self.id, tickets_issued: 0, tickets_left: total_tickets)
	end
end
