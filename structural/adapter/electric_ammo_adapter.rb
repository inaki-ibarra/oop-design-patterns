module Adapter
  class ElectricAmmoAdapter
    attr_reader :energy

    def initialize(electric_ammo)
      @ammo = electric_ammo
      @energy = @ammo.energy

      use_battery if @energy < 100
    end

    def use_battery
      @energy += 50
    end
  end
end
