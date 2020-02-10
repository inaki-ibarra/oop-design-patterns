require './creational/abstract_factory/app'

RSpec.describe AbstractFactory::App do
  describe '#main' do
    context 'Base' do
      it 'raises error when factory is missing' do
        expect do
          described_class.new.main(nil)
        end.to raise_error("missing factory")
      end
    end

    context 'Honda' do
      it 'starts Honda car and truck' do
        expect do
          described_class.new.main('Honda')
        end.to output("Start a Honda car\nStart a Honda truck\n").to_stdout
      end
    end

    context 'Toyota' do
      it 'starts Toyota car and truck' do
        expect do
          described_class.new.main('Toyota')
        end.to output("Start a Toyota car\nStart a Toyota truck\n").to_stdout
      end
    end

  end
end
