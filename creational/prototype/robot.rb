# frozen_string_literal: true

module Prototype
  class Robot
    def initialize(source = nil)
      return unless source

      self.str = source.str
      self.agi = source.agi
      self.int = source.int
      self.memory = source.memory
    end

    def clone
      raise 'not implemented'
    end
  end
end
