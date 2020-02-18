# frozen_string_literal: true

module Adapter
  class PlasmaAmmo
    attr_reader :energy

    def initialize(energy)
      @energy = energy
    end
  end
end
