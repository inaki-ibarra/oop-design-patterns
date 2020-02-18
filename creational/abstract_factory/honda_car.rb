# frozen_string_literal: true

require_relative 'car'

module AbstractFactory
  class HondaCar
    include Car

    def start
      puts 'Start a Honda car'
    end
  end
end
