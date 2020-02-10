require_relative 'team'
require_relative 'ferrari_car'

class FerrariTeam < Team
  def create_car
    FerrariCar.new
  end
end
