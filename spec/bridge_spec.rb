require './structural/bridge/app'

RSpec.describe Bridge::App do
  describe '#main' do
    it 'prints open notice' do
      expect do
        described_class.new.main('open')
      end.to output("display stylized text: opening...\n").to_stdout
    end

    it 'prints close notice' do
      expect do
        described_class.new.main('close')
      end.to output("display stylized text: closing...\n").to_stdout
    end

    it 'prints reset notice' do
      expect do
        described_class.new.main('reset')
      end.to output("display stylized text: resetting...\n").to_stdout
    end
  end
end
