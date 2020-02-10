require_relative 'car'

class FordCar
  include Car

  def drive
    puts 'Drive with Ford car'
  end

  def finish
    puts 'Finish with Ford car'
  end
end
