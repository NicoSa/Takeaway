module ErrorHelpers

  def raise_great_error
    raise GreatError, totals_dont_match_error
  end

  def totals_dont_match_error
    "Can´t perform order, wrong total! #{order.suggested_total} actual total: #{@calculated_total}"
  end

  def argument_one_no_hash_error
    raise GreatError, "Argument One has to be a Hash!" if @food_quantities.class != Hash
  end

  def argument_two_no_fixnum_error
    raise GreatError, "Argument Two has to be a Fixnum!" if @suggested_total.class != Fixnum
  end

end
