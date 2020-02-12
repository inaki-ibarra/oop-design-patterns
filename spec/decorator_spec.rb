require './structural/decorator/app'

RSpec.describe Decorator::App do
  describe '#main' do
    it 'sends all notifications' do
      expect do
        described_class.new.main
      end.to output(
        <<~TEXT
          send email notification
          send push notification
          send sms notification
        TEXT
      ).to_stdout
    end
  end
end
