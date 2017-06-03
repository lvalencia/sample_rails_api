class Estimator
  def estimate(address)
    Rubillow::HomeValuation.search_results(format_address(address))
  end

  private

  def format_address(address)
    AddressFormatter.new(address_params: address).format
  end


end
