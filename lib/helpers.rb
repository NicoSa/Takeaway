module Helpers

	MENU = {"Lark´s Tongues" => 5,
			"Wren´s Livers" => 8,
			"Chaffinch Brains" => 7,
		    "Jaguar´s Earlobes" => 9,
		    "Wolf Nipple Chips" => 4, 
		    "Dromedary Pretzels" => 4,
		    "Tuscany Fried Bats" => 7,
			"Waifer Thin Mint" => 1}
 	
 	def totals_dont_match_error
 		"Can´t perform order, wrong total! #{order.suggested_total} actual total: #{@calculated_total}"
 	end

end