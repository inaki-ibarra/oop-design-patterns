# frozen_string_literal: true

require './creational/builder/app'

RSpec.describe Builder::App do
  describe '#main' do
    context 'Race Car' do
      it 'returns a race car' do
        car = described_class.new.main('Race Car')

        expect(car.type).to eq('Race Car')
        expect(car.color).to eq('Red')
        expect(car.turbo).to eq(true)
        expect(car.wheels).to eq(4)
      end
    end

    context 'Truck' do
      it 'returns a truck' do
        car = described_class.new.main('Truck')

        expect(car.type).to eq('Truck')
        expect(car.color).to eq('White')
        expect(car.turbo).to eq(false)
        expect(car.wheels).to eq(10)
      end
    end
  end
end
