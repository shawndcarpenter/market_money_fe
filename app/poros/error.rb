class Error 
  attr_reader :detail

  def initialize(error_data)
    @detail = error_data[:detail]
  end
end