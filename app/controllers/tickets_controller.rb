class TicketsController < ApplicationController
	before_action :authenticate_user!
	
	def create
		@ticket = Ticket.new(ticket_params)
		@ticket.passenger = current_user.passenger
		@ticket.status = "active"

		urlstring = 'http://bookflight-api.herokuapp.com/api/bookings/generate_reference'
		response = HTTParty.get(urlstring).parsed_response
		@ticket.booking_number = response["booking"]["reference_num"]
		
		if @ticket.save
			redirect_to airlines_path, notice: "Successfully booked airline!"
		else
			redirect_to airline_path(@ticket.airline)
		end
		
	end

	def ticket_params
		params[:ticket].permit(:booking_number, :passenger_id, :airline_id, :travel_class, :date_journey, :status,meal_ids: [])
	end
end
