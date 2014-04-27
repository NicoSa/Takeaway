class Order

  attr_reader :food_quantities, :suggested_total

  def initialize(food_quantities,suggested_total)
    @food_quantities = food_quantities
    @suggested_total = suggested_total
    argument_one_hash?
    argument_two_fixnum?
  end

  def argument_one_hash?
    raise GreatError, "Argument 1 has to be a Hash!" if @food_quantities.class != Hash
  end

  def argument_two_fixnum?
    raise GreatError, "Argument 2 has to be a Fixnum!" if @suggested_total.class != Fixnum
  end
end
