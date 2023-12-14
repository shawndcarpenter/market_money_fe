class MarketSearchFacade
  def initialize(params)
    @params = params
  end

  def search_results
    service = MarketSearchService.new

    json = service.search_markets(@params)
    if json[:errors]
      @search_results = json[:errors].map do |error_data|
        Error.new(error_data)
      end
    else
      @search_results = json[:data].map do |market_data|
        Market.new(market_data)
      end
    end
  end 
end