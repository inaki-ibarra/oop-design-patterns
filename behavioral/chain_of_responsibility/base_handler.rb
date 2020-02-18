# frozen_string_literal: true

module ChainOfResponsibility
  class BaseHandler
    attr_accessor :next

    def handle(request)
      @next&.handle(request)
    end
  end
end
