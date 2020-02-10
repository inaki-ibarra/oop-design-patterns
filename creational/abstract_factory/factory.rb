require_relative 'car'
require_relative 'truck'

module AbstractFactory
  module Factory
    def create_car
      Car.new
    end

    def create_truck
      Truck.new
    end
  end
end
