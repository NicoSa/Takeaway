require 'rubygems'
require 'twilio-ruby'

require_relative './helpers.rb'
require_relative './smscontroller.rb'
require_relative './smsbody.rb'
require_relative './greaterror.rb'
require_relative './errorhelpers.rb'

class TakeAway

  include Helpers
  include ErrorHelpers
  include SMSController
  include SMSBody

  attr_reader :order, :total

  def initialize(order)
    @order = order
    @total = 0
  end

  def check_for_wrong_items
    order.food_quantities.each{|item, quantity| raise GreatError, "Item doesn´t exist" if MENU[item] != Fixnum}
  end

  def calculate_total
    #check_for_wrong_items
    order.food_quantities.each{|item, quantity| @total += (MENU[item] * quantity)}
  end

  def totals_match?
    order.suggested_total == @total
  end

  def sent_order_confirmation
    raise_great_error unless totals_match?
    sent_confirmation
  end

end
