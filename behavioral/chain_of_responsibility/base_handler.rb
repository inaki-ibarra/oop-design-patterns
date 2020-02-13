module ChainOfResponsibility
  class BaseHandler
    attr_accessor :next

    def handle(request)
      if @next != nil
        @next.handle(request)
      end
    end
  end
end
