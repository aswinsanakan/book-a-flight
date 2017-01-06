class TicketsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@ticket = Ticket.new(ticket_params)
		@ticket.passenger = current_user.passenger
		
	end

	def ticket_params
		params[:ticket].permit(:booking_number, :passenger_id, :airline_id, :travel_class, :date_journey, :status)
	end
end
