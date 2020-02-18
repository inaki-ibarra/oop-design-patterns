# frozen_string_literal: true

module Bridge
  module Program
    attr_reader :running

    def start
      @running = true
    end

    def stop
      @running = false
    end

    def display_text(text)
      puts "display plain text: #{text}"
    end
  end
end
