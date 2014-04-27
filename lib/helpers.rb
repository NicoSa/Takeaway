module Helpers

  MENU = {"Lark´s Tongues" => 5,
          "Wren´s Livers" => 8,
          "Chaffinch Brains" => 7,
          "Jaguar´s Earlobes" => 9,
          "Wolf Nipple Chips" => 4,
          "Dromedary Pretzels" => 4,
          "Tuscany Fried Bats" => 7,
          "Waifer Thin Mint" => 1}

  def sent_confirmation
    generate_sms_body
    send_sms(@sms_body)
  end

  def raise_great_error
    raise GreatError, totals_dont_match_error
  end

  def totals_dont_match_error
    "Can´t perform order, wrong total! #{order.suggested_total} actual total: #{@calculated_total}"
  end

  def display_menu
    MENU.each{|item, price| puts "> #{item} | Price: #{price} GBP"}
  end

end
