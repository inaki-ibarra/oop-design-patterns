require_relative 'storm_trooper'

module Prototype
  class App
    def main
      trooper = StormTrooper.new
      trooper.str = 100
      trooper.agi = 120
      trooper.int = 80

      clone = trooper.clone

      { orig: trooper, clone: clone }
    end
  end
end
