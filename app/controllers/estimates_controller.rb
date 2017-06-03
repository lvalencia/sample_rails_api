class EstimatesController < ApplicationController

  def index
  end

  def address
    binding.pry
  end

  private
    def estimate_params
      params.require(:address).permit(white_listed_params)
    end

    def white_listed_params
      %w(street_1 street_2 state city country postcode)
    end
end
