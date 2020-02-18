# frozen_string_literal: true

require './behavioral/mediator/app'

RSpec.describe Mediator::App do
  describe '#main' do
    context 'Submit and Close' do
      it 'triggers login xhr, alert and close' do
        expect do
          described_class.new.main
        end.to output(
          <<~TEXT
            xhr: send login request
            render: Mediator::SuccessAlert
            remove: Mediator::LoginModal
          TEXT
        ).to_stdout
      end
    end
  end
end
