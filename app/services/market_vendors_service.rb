class MarketVendorsService
  def conn 
    Faraday.new("http://localhost:3000")
  end

  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: :true)
  end

  def get_market_vendors(market_id)
    get_url("/api/v0/markets/#{market_id}/vendors")
  end

  # def create_market_vendor
  #   conn = Faraday.new("http://localhost:3000")
  #   post_data = { post: {{
  #     "market_id": params[:market_id],
  #     "vendor_id": params[:vendor_id]
  #   }}}

  #   response = conn.post("/api/v0/markets/#{market_id}/vendors") do |req|
  #     req.headers['Content-Type'] = 'application/json'
  #     req.body = JSON.generate(post_data)
  #   end
  # end
end