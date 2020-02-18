# frozen_string_literal: true

require './structural/facade/app'

RSpec.describe Facade::App do
  describe '#main' do
    it 'executes given SQL' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          sanitize SQL: SELECT * FROM users
          execute SQL: SELECT * FROM users
          log SQL: SELECT * FROM users
        TEXT
      ).to_stdout
    end
  end
end
