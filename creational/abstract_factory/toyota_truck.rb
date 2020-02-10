require_relative 'truck'

class ToyotaTruck
  include Truck

  def start
    puts 'Start a Toyota truck'
  end
end
