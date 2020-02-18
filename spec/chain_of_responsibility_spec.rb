# frozen_string_literal: true

require './behavioral/chain_of_responsibility/app'

RSpec.describe ChainOfResponsibility::App do
  describe '#main' do
    it 'triggers methods in chain' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          authenticate
          authorize
          validate
        TEXT
      ).to_stdout
    end
  end
end
