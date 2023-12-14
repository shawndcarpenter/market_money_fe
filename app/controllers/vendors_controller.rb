class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.new(params[:id]).vendor
    if params[:city] || params[:state] || params[:name]
      @search_results = MarketSearchFacade.new(params).search_results
    end
  end
end