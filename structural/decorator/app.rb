# frozen_string_literal: true

require_relative 'notifier'
require_relative 'push_decorator'
require_relative 'sms_decorator'

module Decorator
  class App
    def main
      notifier = Notifier.new
      notifier.send

      notifier = PushDecorator.new(notifier)
      notifier.send

      notifier = SmsDecorator.new(notifier)
      notifier.send
    end
  end
end
