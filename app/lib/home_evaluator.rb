class HomeEvaluator
  def initialize(address:, estimator:, formatter:, **options)
    @address = address
    @estimator = estimator
    @formatter = formatter
    @options = options
  end

  def evaluate
    payload = estimator.estimate(address)
    formatter.format(payload)
  end

  attr_reader :address, :formatter, :estimator, :options
end
