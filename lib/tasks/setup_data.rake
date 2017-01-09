task :setup_data => :environment do 

	User.create(username: "Aswin Sanakan", email: "aswin@gmail.com", password: "aswin123")
	


	airlines = ["Air India", "Spice Jet","U.S Airways", "Continental","Boeing 747","Trans World"]
	
	airlines.each do |airline|
		Airline.create(name: airline, flight_number: Faker::Lorem.characters(5).upcase )
	end

	meals = [["Vegetarian","This is a strictly vegetarian meal without (Non Dairy)"],["Non Vegetarian","These are meals cooked using non vegetarian food items"],["Sea Food","This meal is usually a lighter or healthier meal choice as compared to meat"],["Oriental","This meal is a Non Veg meal cooked in Chinese style"],["Continental","This is a meal prepared in Continental or Western style"]]
	meals.each do |meal|
		m_type = meal[0]
		descr = meal[1]
		Meal.create(meal_type: m_type, description: descr)
	end
end