# frozen_string_literal: true

require_relative 'team'
require_relative 'ferrari_car'

module FactoryMethod
  class FerrariTeam < Team
    def create_car
      FerrariCar.new
    end
  end
end
