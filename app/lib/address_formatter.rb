class AddressFormatter
  attr_reader :address

  def initialize(address_params:)
    @address = address_params
  end

  def format
    {
      address: streets,
      citystatezip: city_state_zip
    }
  end

  private

  def streets
    "#{address[:street_1]} #{address[:street_2]}"
  end

  def city_state_zip
    "#{address[:city]}, #{address[:state]} #{address[:postcode]}"
  end
end
