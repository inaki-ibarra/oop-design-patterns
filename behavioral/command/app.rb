require_relative 'gui'
require_relative 'destroy_all'

module Command
  class App
    def main
      gui = Gui.new
      gui.button.command = -> { trigger(DestroyAll.new) }

      gui.button.click
    end

    def trigger(command)
      log(command)
      command.execute
    end

    def log(command)
      puts "log command: #{command.class}"
    end
  end
end
