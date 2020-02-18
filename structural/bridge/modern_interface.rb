# frozen_string_literal: true

require_relative 'interface'

module Bridge
  class ModernInterface < Interface
    def open
      @program.display_text('opening...')
      super
    end

    def close
      @program.display_text('closing...')
      super
    end

    def reset
      @program.display_text('resetting...')
      super
    end
  end
end
