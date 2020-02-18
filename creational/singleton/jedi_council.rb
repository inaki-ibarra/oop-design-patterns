# frozen_string_literal: true

module Singleton
  class JediCouncil
    private_class_method :new

    def self.instance
      if @instance.nil?
        @instance = new
      else
        @instance
      end
    end

    def execute(command)
      puts "execute command: #{command}"
    end
  end
end
