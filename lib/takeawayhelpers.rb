require_relative './menu.rb'

module TakeAwayHelpers
  
  include Menu

  def sent_confirmation
    generate_timestamp
    send_sms(@sms_body)
  end

  def check_for_wrong_items
    order.food_quantities.each{|item, quantity| raise "Item doesn´t exist" if MENU[item].class != Fixnum}
  end

end
