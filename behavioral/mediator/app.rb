require_relative 'controller'
require_relative 'view'

module Mediator
  class App
    def main
      controller = Controller.new
      controller.views[:login_modal].submit
      controller.views[:success_alert].close_modal
    end
  end
end
