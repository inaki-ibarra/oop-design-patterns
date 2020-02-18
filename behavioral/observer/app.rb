# frozen_string_literal: true

require_relative 'controller'
require_relative 'user_component'

module Observer
  class App
    def main
      controller = Controller.new
      component = UserComponent.new

      controller.observe(:model, component)

      controller.fetch_model
    end
  end
end
