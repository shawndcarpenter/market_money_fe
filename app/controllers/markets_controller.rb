class MarketsController < ApplicationController
  def show
    @market = MarketFacade.new(params[:id]).market
    @vendors = MarketVendorsFacade.new(params[:id]).vendors
  end

  def index
    markets_facade = MarketsFacade.new
    @markets = markets_facade.markets
  end
end