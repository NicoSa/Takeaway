module Menu

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

end
