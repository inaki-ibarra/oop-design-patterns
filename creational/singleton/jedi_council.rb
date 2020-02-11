module Singleton
  class JediCouncil
    private_class_method :new

    def self.get_instance
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
