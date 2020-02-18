# frozen_string_literal: true

require_relative 'ferrari_team'
require_relative 'ford_team'

module FactoryMethod
  class App
    def main(preference)
      team = Team.new

      if preference == 'Fast'
        team = FerrariTeam.new
      elsif preference == 'Furious'
        team = FordTeam.new
      end

      team.race
    end
  end
end
