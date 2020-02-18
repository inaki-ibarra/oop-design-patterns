# frozen_string_literal: true

require_relative 'car'

module Builder
  class TruckBuilder
    attr_reader :product

    def initialize
      reset
    end

    def reset
      @product = Car.new(type: 'Truck')
    end

    def color=(color)
      @product.color = color
    end

    def turbo=(is_enabled)
      @product.turbo = is_enabled
    end

    def wheels=(total_wheels)
      @product.wheels = total_wheels
    end
  end
end
