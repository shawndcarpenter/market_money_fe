class VendorFacade
  def initialize(vendor_id)
    @vendor_id = vendor_id
  end

  def vendor
    service = VendorService.new

    vendor_data = service.get_vendor(@vendor_id)[:data]
    @vendor = Vendor.new(vendor_data)
  end
end