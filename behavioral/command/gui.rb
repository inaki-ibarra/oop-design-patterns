module Command
  class Gui
    attr_reader :button

    def initialize
      @button = Button.new
    end
  end

  class Button
    attr_accessor :command

    def click
      command.call
    end
  end
end
