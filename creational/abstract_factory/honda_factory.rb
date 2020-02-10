require_relative 'factory'
require_relative 'honda_car'
require_relative 'honda_truck'

class HondaFactory
  include Factory

  def create_car
    HondaCar.new
  end

  def create_truck
    HondaTruck.new
  end
end
