# frozen_string_literal: true

module Decorator
  class NotifierDecorator
    def initialize(source)
      @source = source
    end

    def send
      @source.send
    end
  end
end
