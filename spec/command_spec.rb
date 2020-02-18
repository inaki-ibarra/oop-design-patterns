# frozen_string_literal: true

require './behavioral/command/app'

RSpec.describe Command::App do
  describe '#main' do
    it 'triggers log and execute command' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          log command: Command::DestroyAll
          execute command: Command::DestroyAll
        TEXT
      ).to_stdout
    end
  end
end
