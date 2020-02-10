require_relative 'factory'
require_relative 'toyota_car'
require_relative 'toyota_truck'

class ToyotaFactory
  include Factory

  def create_car
    ToyotaCar.new
  end

  def create_truck
    ToyotaTruck.new
  end
end
