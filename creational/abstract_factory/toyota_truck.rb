require_relative 'truck'

module AbstractFactory
  class ToyotaTruck
    include Truck

    def start
      puts 'Start a Toyota truck'
    end
  end
end
