require_relative 'modern_program'
require_relative 'modern_interface'

module Bridge
  class App
    def main(command)
      modern_program = ModernProgram.new
      modern_interface = ModernInterface.new(modern_program)

      case command
      when 'open'
        modern_interface.open
      when 'close'
        modern_interface.close
      when 'reset'
        modern_interface.reset
      else
        raise 'invalid command'
      end
    end
  end
end
