require_relative 'car'

module Builder
  class CarBuilder
    attr_reader :product

    def initialize
      reset
    end

    def reset
      @product = Car.new(type: 'Race Car')
    end

    def set_color(color)
      @product.color = color
    end

    def set_turbo(is_enabled)
      @product.turbo = is_enabled
    end

    def set_wheels(total_wheels)
      @product.wheels = total_wheels
    end
  end
end
