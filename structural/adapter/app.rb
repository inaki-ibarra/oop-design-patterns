# frozen_string_literal: true

require_relative 'blaster'
require_relative 'plasma_ammo'
require_relative 'electric_ammo'
require_relative 'electric_ammo_adapter'

module Adapter
  class App
    def main
      blaster = Blaster.new(100)

      plasma = PlasmaAmmo.new(100)
      plasma_compatible = blaster.compatible?(plasma)

      electric = ElectricAmmo.new(80)
      electric_compatible = blaster.compatible?(electric)

      adapter = ElectricAmmoAdapter.new(electric)
      adapter_compatible = blaster.compatible?(adapter)

      puts "Plasma compatible: #{plasma_compatible}"
      puts "Electric compatible: #{electric_compatible}"
      puts "Adapter compatible: #{adapter_compatible}"

      { plasma: plasma, electric: electric, adapter: adapter }
    end
  end
end
