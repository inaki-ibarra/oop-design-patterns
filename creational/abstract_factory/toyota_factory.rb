require_relative 'factory'
require_relative 'toyota_car'
require_relative 'toyota_truck'

module AbstractFactory
  class ToyotaFactory
    include Factory

    def create_car
      ToyotaCar.new
    end

    def create_truck
      ToyotaTruck.new
    end
  end
end
