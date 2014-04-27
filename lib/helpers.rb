module Helpers

  MENU = {"Lark´s Tongues" => 5,
          "Wren´s Livers" => 8,
          "Chaffinch Brains" => 7,
          "Jaguar´s Earlobes" => 9,
          "Wolf Nipple Chips" => 4,
          "Dromedary Pretzels" => 4,
          "Tuscany Fried Bats" => 7,
          "Waifer Thin Mint" => 1}

  def display_menu
    MENU.each{|item, price| puts "> #{item} | Price: #{price} GBP"}
  end

  def sent_confirmation
    generate_timestamp
    send_sms(@sms_body)
  end

  def check_for_wrong_items
    order.food_quantities.each{|item, quantity| raise GreatError, "Item doesn´t exist" if MENU[item].class != Fixnum}
  end

end
