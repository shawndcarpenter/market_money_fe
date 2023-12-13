class MarketService
  def conn 
    Faraday.new("http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: :true)
  end

  def get_market(market_id)
    get_url("/api/v0/markets/#{market_id}")
  end
end