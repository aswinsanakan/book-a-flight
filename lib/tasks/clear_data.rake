task :clear_data => :environment do 
	Airline.delete_all
	Ticket.delete_all
	AirlineTicket.delete_all
	CancelledTicket.delete_all
	Passenger.delete_all
	User.delete_all
	Meal.delete_all
	TicketMeal.delete_all
end