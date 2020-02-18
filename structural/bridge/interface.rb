# frozen_string_literal: true

module Bridge
  class Interface
    def initialize(program)
      @program = program
    end

    def open
      @program.start
    end

    def close
      @program.stop
    end

    def reset
      @program.stop
      @program.start
    end

    protected

    attr_reader :program
  end
end
