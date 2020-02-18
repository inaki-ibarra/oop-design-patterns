# frozen_string_literal: true

require_relative 'authorization'
require_relative 'authentication'
require_relative 'validation'

module ChainOfResponsibility
  class App
    def main
      authentication = Authentication.new
      authorization = Authorization.new
      validation = Validation.new

      authentication.next = authorization
      authorization.next = validation

      authentication.handle(payload: '')
    end
  end
end
