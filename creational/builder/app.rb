require_relative 'car_builder'
require_relative 'truck_builder'
require_relative 'director'

module Builder
  class App
    def main(preference)
      director = Director.new

      if preference == 'Race Car'
        builder = CarBuilder.new
        director.build_race_car(builder)
        builder.product
      elsif preference == 'Truck'
        builder = TruckBuilder.new
        director.build_truck(builder)
        builder.product
      else
        raise 'invalid preference'
      end
    end
  end
end
