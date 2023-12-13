class MarketsController < ApplicationController
  def show
    @market = MarketFacade.new(params[:id]).market
  end

  def index
    markets_facade = MarketsFacade.new
    @markets = markets_facade.markets
  end
end