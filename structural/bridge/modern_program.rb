require_relative 'program'

module Bridge
  class ModernProgram
    include Program

    def display_text(text)
      puts "display stylized text: #{text}"
    end
  end
end
