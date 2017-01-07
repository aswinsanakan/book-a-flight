class AirlinesController < ApplicationController
	before_action :authenticate_user!

	def index
		@airlines = Airline.all
		@user = current_user
		@ticket = Ticket.new
		
	end

	def show
		@airline = Airline.find(params[:id])
		@ticket = Ticket.new
	end
end
