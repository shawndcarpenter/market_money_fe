class VendorsController < ApplicationController
  def show
    @vendor = VendorFacade.new(params[:id]).vendor
  end
end