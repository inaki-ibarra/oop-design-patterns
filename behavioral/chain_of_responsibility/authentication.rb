require_relative 'base_handler'

module ChainOfResponsibility
  class Authentication < BaseHandler
    def handle(request)
      puts 'authenticate'

      super(request)
    end
  end
end
