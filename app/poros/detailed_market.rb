class DetailedMarket 
  attr_reader :name, :address

  def initialize(market_data)
    @name = market_data[:attributes][:name]
    @address = "#{market_data[:attributes][:street]} #{market_data[:attributes][:city]}, #{market_data[:attributes][:state]} #{market_data[:attributes][:zip]}"
    # binding.pry
  end
end