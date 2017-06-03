require 'rails_helper'

RSpec.describe EstimatesController, type: :controller do

  describe 'GET index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'GET address' do
    let (:address) do
      {
        address: {
          street_1: '637 S Grand Ave',
          street_2: 'Unit 1',
          city: 'Los Angeles',
          state: 'CA',
          postcode: '90731',
        }
      }
    end

    it 'renders the index template' do
      post :address, params: address

      expect(response).to render_template('show')
    end
  end

end
