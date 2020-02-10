require_relative 'car'

module FactoryMethod
  class FordCar
    include Car

    def drive
      puts 'Drive with Ford car'
    end

    def finish
      puts 'Finish with Ford car'
    end
  end
end
