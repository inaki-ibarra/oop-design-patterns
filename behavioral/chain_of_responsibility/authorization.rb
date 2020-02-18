# frozen_string_literal: true

require_relative 'base_handler'

module ChainOfResponsibility
  class Authorization < BaseHandler
    def handle(request)
      puts 'authorize'

      super(request)
    end
  end
end
