describe HomeEstimateFormatter do
  describe '#format' do
    let (:bad_payload) { double(:bad_payload, code: 503, message: 'Bad Request') }
    let (:good_payload) { double(:good_payload, code: 0) }
    let (:error_response) do
      { format: :for_bad }
    end
    let (:success_response) do
      { format: :for_good }
    end

    subject { described_class.new }

    before do
      allow(subject).to receive(:format_error).and_return(error_response)
      allow(subject).to receive(:format_success).and_return(success_response)
    end

    it 'formats bad payload' do
      expect(subject.format(bad_payload)).to eq(error_response)
    end

    it 'formats good payload' do
      expect(subject.format(good_payload)).to eq(success_response)
    end
  end
end
