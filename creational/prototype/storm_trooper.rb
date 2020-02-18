# frozen_string_literal: true

require_relative 'robot'

module Prototype
  class StormTrooper < Robot
    attr_accessor :str, :agi, :int, :memory

    def initialize(source = nil)
      @memory = { past: nil }

      super(source) if source
    end

    def clone
      StormTrooper.new(self)
    end
  end
end
