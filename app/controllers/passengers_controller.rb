class PassengersController < ApplicationController
	before_action :authenticate_user!

	def new
		@passenger = Passenger.new
	end

	def edit
		@passenger = Passenger.new(params[:id])
	end

	def create
		@passenger = Passenger.new(passenger_params)
		@passenger.user_id = current_user.id
		if @passenger.save
			redirect_to root_path, notice: "Successfully created profile!"
		else
			render "new"
		end
	end

	def my_tickets
		
		if params[:cancel_ticket]
			@ticket = Ticket.find(params[:cancel_ticket])
			@ticket.cancel_ticket
		end
		@passenger = current_user.passenger
		if @passenger.tickets
			@tickets = @passenger.tickets
		end
	end

	private

	def passenger_params
		params[:passenger].permit(:name, :address, :user_id)
	end

end
