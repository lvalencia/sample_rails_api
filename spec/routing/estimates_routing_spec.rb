require 'rails_helper'

RSpec.describe EstimatesController, type: :routing do
  describe 'routing' do

    it 'routes to #index' do
      expect(:get => '/').to route_to('estimates#index')
    end

    it 'routes to #address' do
      expect(:post => '/estimate/address').to route_to('estimates#address')
    end

    it 'routes to #show' do
      expect(:get => '/estimate/show').to route_to('estimates#show')
    end
  end
end
