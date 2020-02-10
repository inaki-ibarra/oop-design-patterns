require_relative 'team'
require_relative 'ford_car'

module FactoryMethod
  class FordTeam < Team
    def create_car
      FordCar.new
    end
  end
end
