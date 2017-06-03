class EstimatesController < ApplicationController

  def index
  end

  def address
    estimate = HomeEvaluator.new(
      address: estimate_params,
      estimator: Estimator.new,
      formatter: HomeEstimateFormatter.new
    ).evaluate

    respond_to do |format|
      if estimate[:success?]
        format.html { redirect_to show_path, notice: 'Price was successfully estimated.' }
      else
        format.html { redirect_to root_path, flash: { error: estimate[:error] } }
      end
    end
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
