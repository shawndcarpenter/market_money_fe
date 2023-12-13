class MarketsFacade
  def initialize
  end

  def markets
    service = MarketsService.new

    json = service.get_markets
    @markets = json[:data].map do |market_data|
      Market.new(market_data)
    end
  end
end