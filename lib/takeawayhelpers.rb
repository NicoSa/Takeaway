module TakeAwayHelpers

	MENU = [{"Lark´s Tongues" => 5.50},
			{"Wren´s Livers" => 8.50},
		    {"Chaffinch Brains" => 7.50},
		    {"Jaguar´s Earlobes" => 9.90},
		    {"Wolf Nipple Chips" => 4.90}, 
		    {"Dromedary Pretzels" => 4.90},
		    {"Tuscany Fried Bats" => 7.90},
			{"Waifer Thin Mint" => 1}]
 	
	
	def create_menu
		MENU.each_with_index{|element, index| puts "#{index + 1}. #{element.keys[0]} | Price: #{element.values[0]}" }
	end

	def menu
		cute_line
		welcome_message
		cute_line
		create_menu
		cute_line
	end

	def welcome_message
		puts "Welcome to Brian´s Fine Dining!".red
	end

	def cute_line
		puts "-~--------------------------~-".red
	end

end