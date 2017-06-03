class HomeEstimateFormatter
  attr_reader :payload

  def format(payload)
    @payload = payload

    if error?
      format_error
    else
      format_success
    end
  end

  protected

  def error?
    payload.code != 0
  end

  def format_error
    {
      success?: false,
      error: payload.message
    }
  end

  def format_success
    {
      success?: true,
      results: format_results
    }
  end

  private

  def format_results
    {
      links: extract_links,
      price: payload.price,
      range: payload.valuation_range,
      last_updated: payload.last_updated
    }
  end

  def extract_links
    payload.links.merge(payload.local_real_estate)
  end

end
