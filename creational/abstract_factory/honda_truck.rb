require_relative 'truck'

class HondaTruck
  include Truck

  def start
    puts 'Start a Honda truck'
  end
end
