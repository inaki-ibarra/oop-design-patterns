# frozen_string_literal: true

require './behavioral/memento/app'

RSpec.describe Memento::App do
  describe '#main' do
    it 'reverts the last 2 changes' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          reverted to: 2nd change
          reverted to: 1st change
        TEXT
      ).to_stdout
    end
  end
end
