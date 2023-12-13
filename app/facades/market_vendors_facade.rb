class MarketVendorsFacade
  def initialize(market_id)
    @market_id = market_id
  end

  def vendors
    service = MarketVendorsService.new

    json = service.get_market_vendors(@market_id)
    @vendors = json[:data].map do |vendor_data|
      MarketVendor.new(vendor_data)
    end
  end
end