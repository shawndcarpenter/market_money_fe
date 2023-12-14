class MarketSearchService
  def search_markets(params)
    conn = Faraday.new("http://localhost:3000/api/v0/markets/search") do |faraday|
      faraday.params["city"] = params[:city]
      faraday.params["state"] = params[:state]
      faraday.params["name"] = params[:name]
    end
    
    response = conn.get
    JSON.parse(response.body, symbolize_names: :true)
  end
end