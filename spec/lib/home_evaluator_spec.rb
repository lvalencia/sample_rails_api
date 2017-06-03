describe HomeEvaluator do
  describe '#evaluate' do
    let (:payload) { 'PAYLOAD' }
    let (:formatted_payload) { 'FORMATTED_PAYLOAD' }
    let (:estimator) { double(:estimator)}
    let (:formatter) { double(:formatter)}
    let (:address) do
      {
        street_1: '637 S Grand Ave',
        street_2: 'Unit 1',
        city: 'Los Angeles',
        state: 'CA',
        postcode: '90731',
      }
    end

    subject { described_class.new(address: address, estimator: estimator, formatter: formatter).evaluate }

    before do
      allow(estimator).to receive(:estimate).and_return(payload)
      allow(formatter).to receive(:format).and_return(formatted_payload)
      subject
    end

    it 'estimates the price' do
      expect(estimator).to have_received(:estimate).with(address)
    end

    it 'formats the estimate' do
      expect(formatter).to have_received(:format).with(payload)
    end

    it 'returns formatted payload' do
      expect(subject).to be(formatted_payload)
    end
  end
end
