class MarketFacade
  def initialize(market_id)
    @market_id = market_id
  end

  def market
    service = MarketService.new

    market_data = service.get_market(@market_id)[:data]
    @market = Market.new(market_data)
  end
end