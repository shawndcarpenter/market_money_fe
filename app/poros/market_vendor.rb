class MarketVendor 
  attr_reader :name, :id

  def initialize(vendor_data)
    @id = vendor_data[:id]
    @name = vendor_data[:attributes][:name]
  end
end