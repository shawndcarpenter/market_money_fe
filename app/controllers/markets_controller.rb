class MarketsController < ApplicationController
  def show
    @market = MarketFacade.new(params[:id]).market
    @vendors = MarketVendorsFacade.new(params[:id]).vendors
  end

  def index
    markets_facade = MarketsFacade.new
    @markets = markets_facade.markets
  end

  def new

  end

  def create 
    create_market_vendor(params[:market_id], params[:vendor_id])
    redirect_to "/vendors/#{params[:vendor_id]}"
    flash[:notice]="Vendor added to Market"
    # yes I know this does not include a sad path
  end

  private

  def create_market_vendor(market_id, vendor_id)
    conn = Faraday.new("http://localhost:3000")
    post_data = {
      "market_id": params[:market_id],
      "vendor_id": params[:vendor_id]
    }

    response = conn.post("/api/v0/market_vendors") do |req|
      req.headers['Content-Type'] = 'application/json'
      req.body = JSON.generate(post_data)
    end
  end
end