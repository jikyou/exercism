module Port
  IDENTIFIER = :PALE

  def self.get_identifier(city)
    city[0, 4].upcase.to_sym
  end

  def self.get_terminal(ship_identifier)
    id = ship_identifier.to_s
    return :A if id.include?("OIL") || id.include?("GAS")
    :B
  end
end
