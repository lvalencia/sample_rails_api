class EstimatesController < ApplicationController

  def index
  end

  def address
    @estimate = HomeEvaluator.new(
      address: estimate_params,
      estimator: Estimator.new,
      formatter: HomeEstimateFormatter.new
    ).estimate
  end

  def show

  end

  private
    def estimate_params
      params.require(:address).permit(white_listed_params)
    end

    def white_listed_params
      %w(street_1 street_2 state city postcode)
    end
end
