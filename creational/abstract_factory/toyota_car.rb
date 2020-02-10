require_relative 'car'

class ToyotaCar
  include Car

  def start
    puts 'Start a Toyota car'
  end
end
