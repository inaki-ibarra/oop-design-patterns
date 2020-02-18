# frozen_string_literal: true

module Adapter
  class ElectricAmmo
    attr_reader :energy

    def initialize(energy)
      raise 'too much energy' if energy > 80

      @energy = energy
    end
  end
end
