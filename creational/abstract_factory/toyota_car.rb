require_relative 'car'

module AbstractFactory
  class ToyotaCar
    include Car

    def start
      puts 'Start a Toyota car'
    end
  end
end
