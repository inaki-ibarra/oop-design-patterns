# frozen_string_literal: true

require_relative 'base_handler'

module ChainOfResponsibility
  class Validation < BaseHandler
    def handle(request)
      puts 'validate'

      super(request)
    end
  end
end
