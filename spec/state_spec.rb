# frozen_string_literal: true

require './behavioral/state/app'

RSpec.describe State::App do
  describe '#main' do
    it 'deploys up to production' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          render development site
          render staging site
          render production site
          already in production
        TEXT
      ).to_stdout
    end

    it 'returns website in production state' do
      result = described_class.new.main

      expect(result[:website].state.class).to eq(State::Production)
    end
  end
end
