module Mediator
  class Controller
    def initialize
      @login_modal = LoginModal.new(self)
      @success_alert = SuccessAlert.new(self)
    end

    def views
      {
        login_modal: @login_modal,
        success_alert: @success_alert
      }
    end

    def send_action(action)
      self.send(action)
    end

    protected

    def login
      puts 'xhr: send login request'
      @success_alert.render
    end

    def close_modal
      @login_modal.remove
    end
  end

end
