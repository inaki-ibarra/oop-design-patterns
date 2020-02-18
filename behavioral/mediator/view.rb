# frozen_string_literal: true

module Mediator
  class View
    def initialize(controller)
      @controller = controller
    end

    def render
      puts "render: #{self.class}"
    end

    def remove
      puts "remove: #{self.class}"
    end
  end

  class LoginModal < View
    def submit
      @controller.send_action(:login)
    end
  end

  class SuccessAlert < View
    def close_modal
      @controller.send_action(:close_modal)
    end
  end
end
