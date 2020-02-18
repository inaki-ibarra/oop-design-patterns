# frozen_string_literal: true

require './behavioral/strategy/app'

RSpec.describe Strategy::App do
  describe '#main' do
    context 'Default' do
      it 'sorts with ruby default algo' do
        result = described_class.new.main('')

        expect(result[:sorted]).to eq((1..100).to_a)
        expect(result[:algo]).to eq(Strategy::RubyDefault)
      end
    end

    context 'Insertion' do
      it 'sorts with insertion algo' do
        result = described_class.new.main('Insertion')

        expect(result[:sorted]).to eq((1..100).to_a)
        expect(result[:algo]).to eq(Strategy::Insertion)
      end
    end

    context 'Selection' do
      it 'sorts with selection algo' do
        result = described_class.new.main('Selection')

        expect(result[:sorted]).to eq((1..100).to_a)
        expect(result[:algo]).to eq(Strategy::Selection)
      end
    end
  end
end
