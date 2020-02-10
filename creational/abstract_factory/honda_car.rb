require_relative 'car'

class HondaCar
  include Car

  def start
    puts 'Start a Honda car'
  end
end
