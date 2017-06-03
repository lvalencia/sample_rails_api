describe Estimator do
  describe '#estimate' do
    let (:address) do
      {
        street_1: '637 S Grand Ave',
        street_2: 'Unit 1',
        city: 'Los Angeles',
        state: 'CA',
        postcode: '90731',
      }
    end
    let(:formatted_address) { '637 S Grand Ave Unit 1 Los Angeles CA 90731' }
    let(:valuation) do
      { payload: :data }
    end

    subject { described_class.new }

    before do
      allow(subject).to receive(:format_address).and_return(address)
      allow(Rubillow::HomeValuation).to receive(:search_results).and_return(valuation)
    end

    it 'formats the address' do
      subject.estimate(address)
      expect(subject).to have_received(:format_address).with(address)
    end

    it 'estimates the value' do

      expect(
        subject.estimate(address)
      ).to be(valuation)

      expect(Rubillow::HomeValuation).to have_received(:search_results)
    end
  end
end
