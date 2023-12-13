class Market 
  attr_reader :name, :city, :state, :id

  def initialize(market_data)
    @id = market_data[:id]
    @name = market_data[:attributes][:name]
    @city = market_data[:attributes][:city]
    @state = market_data[:attributes][:state]
  end
end