# frozen_string_literal: true

require './creational/factory_method/app'

RSpec.describe FactoryMethod::App do
  describe '#main' do
    context 'Base' do
      it 'raises error when create_car is not implemented' do
        expect do
          described_class.new.main(nil)
        end.to raise_error('not implemented')
      end
    end

    context 'Ferrari' do
      it 'races with Ferrari car' do
        expect do
          described_class.new.main('Fast')
        end.to output("Drive with Ferrari car\nFinish with Ferrari car\n").to_stdout
      end
    end

    context 'Ford' do
      it 'races with Ford car' do
        expect do
          described_class.new.main('Furious')
        end.to output("Drive with Ford car\nFinish with Ford car\n").to_stdout
      end
    end
  end
end
