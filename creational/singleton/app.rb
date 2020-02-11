require_relative 'jedi_council'

module Singleton
  class App
    def main
      council_a = JediCouncil.get_instance
      council_a.execute('Fight')

      council_b = JediCouncil.get_instance
      council_b.execute('Retreat')

      { instance_a: council_a, instance_b: council_b }
    end
  end
end
