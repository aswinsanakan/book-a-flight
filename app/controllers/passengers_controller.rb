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
		@passenger = current_user.passenger
		@tickets = @passenger.tickets
		
	end

	private

	def passenger_params
		params[:passenger].permit(:name, :address, :user_id)
	end

end
