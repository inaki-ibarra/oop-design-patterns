require_relative 'truck'

module AbstractFactory
  class HondaTruck
    include Truck

    def start
      puts 'Start a Honda truck'
    end
  end
end
