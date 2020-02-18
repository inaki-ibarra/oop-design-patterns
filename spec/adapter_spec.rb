# frozen_string_literal: true

require './structural/adapter/app'

RSpec.describe Adapter::App do
  describe '#main' do
    it 'prints ammos compatibility' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          Plasma compatible: true
          Electric compatible: false
          Adapter compatible: true
        TEXT
      ).to_stdout
    end

    it 'returns ammos with right energy' do
      result = described_class.new.main

      expect(result[:plasma].energy).to eq(100)
      expect(result[:electric].energy).to eq(80)
      expect(result[:adapter].energy).to eq(130)
    end
  end
end
