require_relative 'robot'

module Prototype
  class StormTrooper < Robot
    attr_accessor :str, :agi, :int, :memory

    def initialize(source = nil)
      if source
        super(source)
      end
    end

    def memory
      { past: nil }
    end

    def clone
      StormTrooper.new(self)
    end
  end
end
