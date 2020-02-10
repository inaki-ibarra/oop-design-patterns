module FactoryMethod
  class Team
    def race
      car = create_car
      car.drive
      car.finish
    end

    def create_car
      raise 'not implemented'
    end
  end
end
