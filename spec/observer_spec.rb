# frozen_string_literal: true

require './behavioral/observer/app'

RSpec.describe Observer::App do
  describe '#main' do
    it 'renders user profile after observing model' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          receive model: Observer::User
          render user profile
        TEXT
      ).to_stdout
    end
  end
end
