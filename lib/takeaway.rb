require 'color_text'
require_relative './helpers.rb'

class TakeAway

	include Helpers

	attr_reader :order, :total

	def initialize(order)
		@order = order
		@total = 0
	end

	def calculate_total!
		order.food_quantities.each{|item, quantity| @total += (MENU[item] * quantity)}
	end

	def totals_match?
		raise totals_dont_match_error if order.suggested_total != @total
	end


	

end


=begin
	
-list of dishes with prices
-placing the order by giving the list of dishes, 
- quantities,
- exact total (raise an error if not correct)
- customer is sent a text saying -> order placed successfully(delivered 1 hour from now, include current time), e.g. "Thank you! Your order was placed and will be delivered before 18:52".
- use Twilio API
- use mocks and/or stubs, as necessary to not to send texts when your tests are run
- in IRB -> order is placed -> the text should actually be sent
- Use your mobile phone number
	
Lark´s tongues
wren´s livers
chaffinch brains
jaguars earlobes
wolf nipple chips
dromedary pretzels
tuscany fried bats
=end