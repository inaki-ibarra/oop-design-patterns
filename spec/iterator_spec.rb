# frozen_string_literal: true

require './behavioral/iterator/app'

RSpec.describe Iterator::App do
  describe '#main' do
    context 'Forward' do
      it 'prints values forward' do
        expect do
          described_class.new.main('Forward')
        end.to output('123').to_stdout
      end
    end

    context 'Backward' do
      it 'prints values backward' do
        expect do
          described_class.new.main('Backward')
        end.to output('321').to_stdout
      end
    end
  end
end
