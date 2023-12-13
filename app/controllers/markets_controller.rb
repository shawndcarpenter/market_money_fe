class MarketsController < ApplicationController
  def show
    @market = MarketFacade.new(params[:id]).market
  end
end