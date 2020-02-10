require_relative 'car'

module FactoryMethod
  class FerrariCar
    include Car

    def drive
      puts 'Drive with Ferrari car'
    end

    def finish
      puts 'Finish with Ferrari car'
    end
  end
end
