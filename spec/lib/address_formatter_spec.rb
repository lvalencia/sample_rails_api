describe AddressFormatter do
  describe '#format'do
    let (:streets) { '637 S Grand Ave Unit 1' }
    let (:city_state_zip) { 'Los Angeles Ca 90731' }

    let (:address_params) do
      {
        street_1: '637 S Grand Ave',
        street_2: 'Unit 1',
        city: 'Los Angeles',
        state: 'CA',
        postcode: '90731',
      }
    end

    let (:expected_result) do
      {
        address: streets,
        citystatezip: city_state_zip
      }
    end

    subject { described_class.new(address_params) }

    before do
      allow(subject).to receive(:streets).and_return(streets)
      allow(subject).to receive(:city_state_zip).and_return(city_state_zip)
    end

    it 'formats the address' do
      expect(subject.format).to (eq expected_result)
      expect(subject).to have_received(:streets)
      expect(subject).to have_received(:city_state_zip)
    end

  end
end
