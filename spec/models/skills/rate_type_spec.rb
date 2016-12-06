require 'spec_helper'

describe Skills::RateType do
  describe '.stringified_types' do
    it 'returns array with all types' do
      result = described_class.stringified_types
      expect(result).to eq(%w(boolean range))
    end
  end

  describe '#expected_range' do
    context 'when rate_type is invalid value' do
      it 'returns null object' do
        rate_type = described_class.new(type: :invalid_type)
        result = rate_type.expected_range
        expect(result).to be_a(::NullObjects::NullObject)
      end
    end

    context 'when rate_type is valid value' do
      it 'returns range' do
        rate_type = described_class.new(type: 'range')
        result = rate_type.expected_range
        expect(result).to eq(0..4)
      end
    end
  end
end
