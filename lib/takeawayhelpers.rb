module TakeAwayHelpers

	MENU = [{"Lark´s Tongues" => 5},
			{"Wren´s Livers" => 8},
		    {"Chaffinch Brains" => 7},
		    {"Jaguar´s Earlobes" => 9},
		    {"Wolf Nipple Chips" => 4}, 
		    {"Dromedary Pretzels" => 4},
		    {"Tuscany Fried Bats" => 7},
			{"Waifer Thin Mint" => 1}]
 	
	
	def create_menu
		MENU.each_with_index{|element, index| puts "#{index + 1}. #{element.keys[0]} | Price: #{element.values[0]} GBP" }
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

	def order_prompt_message
		order_item = ""
		puts "Please type your order in this format 'item number'x'quantity'! If you want to place the order, type 'place order'"
		order_item = gets.chomp
		while order_item != "order" do
		@ordered_item_array + order_item
		order_prompt_message
		end
		show_ordered_item_array
	end

	def show_ordered_item_array
		puts @ordered_item_array.inspect
	end

	def cute_line
		puts "-~--------------------------~-".red
	end

end