class Order

	attr_reader :food_quantities, :suggested_total

	def initialize(food_quantities,suggested_total)
		@food_quantities = food_quantities
		@suggested_total = suggested_total
	end

end