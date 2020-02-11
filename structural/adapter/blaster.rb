module Adapter
  class Blaster
    def initialize(energy_needed)
      @energy_needed = energy_needed
    end

    def compatible?(ammo)
      @energy_needed <= ammo.energy
    end
  end
end
