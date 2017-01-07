task :setup_data => :environment do 

	User.create(username: "Aswin Sanakan", email: "aswinsanakan@gmail.com", password: "aswin123")
	User.create(username: "Arjun Sanakan", email: "arjun2r@gmail.com", password: "arjun123")


	airlines = ["Air India", "Spice Jet","U.S Airways", "Continental","Boeing 747","Trans World"]
	
	airlines.each do |airline|
		Airline.create(name: airline, flight_number: Faker::Lorem.characters(5).upcase )
	end
end