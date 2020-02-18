# frozen_string_literal: true

module Builder
  class Car
    attr_accessor :type, :color, :turbo, :wheels

    def initialize(type:)
      @type = type
    end
  end
end
