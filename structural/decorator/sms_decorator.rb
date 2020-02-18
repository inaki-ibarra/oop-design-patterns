# frozen_string_literal: true

require_relative 'notifier_decorator'

module Decorator
  class SmsDecorator < NotifierDecorator
    def send
      puts 'send sms notification'
    end
  end
end
