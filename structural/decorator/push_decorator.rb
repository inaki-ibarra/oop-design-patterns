# frozen_string_literal: true

require_relative 'notifier_decorator'

module Decorator
  class PushDecorator < NotifierDecorator
    def send
      puts 'send push notification'
    end
  end
end
