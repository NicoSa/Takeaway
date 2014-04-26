require_relative './helpers.rb'

class Order

	attr_reader :food_quantities, :total

	def initialize(food_quantities,total)
		@food_quantities = food_quantities
		@total = total
	end

end