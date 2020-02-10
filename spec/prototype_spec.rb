require './creational/prototype/app'

RSpec.describe Prototype::App do
  describe '#main' do
    it 'clones the original object' do
      result = described_class.new.main

      orig = result[:orig]
      clone = result[:clone]

      expect(clone.object_id).not_to eq(orig.object_id)
      expect(clone.class).to eq(orig.class)
      expect(clone.str).to eq(orig.str)
      expect(clone.agi).to eq(orig.agi)
      expect(clone.int).to eq(orig.int)
      expect(clone.memory).to eq(orig.memory)
    end
  end
end
