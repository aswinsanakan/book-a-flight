task :setup_data => :environment do 
	airlines = ["Air India", "Spice Jet","U.S Airways", "Continental","Boeing 747","Trans World"]
	
	airlines.each do |airline|
		Airline.create(name: airline, flight_number: Faker::Lorem.characters(5).upcase )
	end
end