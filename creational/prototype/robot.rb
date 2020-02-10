module Prototype
  class Robot
    def initialize(source = nil)
     if source
      self.str = source.str
      self.agi = source.agi
      self.int = source.int
      self.memory = source.memory
     end
    end

    def clone
      raise 'not implemented'
    end
  end
end
