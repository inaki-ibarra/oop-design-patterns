# frozen_string_literal: true

require_relative 'honda_factory'
require_relative 'toyota_factory'

module AbstractFactory
  class App
    def main(preference)
      factory = nil

      if preference == 'Honda'
        factory = HondaFactory.new
      elsif preference == 'Toyota'
        factory = ToyotaFactory.new
      else
        raise 'missing factory'
      end

      factory.create_car.start
      factory.create_truck.start
    end
  end
end
