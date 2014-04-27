require_relative './errorhelpers.rb'

class Order

  include ErrorHelpers

  attr_reader :food_quantities, :suggested_total

  def initialize(food_quantities,suggested_total)
    @food_quantities = food_quantities
    @suggested_total = suggested_total
    argument_one_no_hash_error
    argument_two_no_fixnum_error
  end

end
