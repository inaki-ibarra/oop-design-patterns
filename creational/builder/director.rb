# frozen_string_literal: true

module Builder
  class Director
    def build_race_car(builder)
      builder.reset
      builder.color = 'Red'
      builder.turbo = true
      builder.wheels = 4
    end

    def build_truck(builder)
      builder.reset
      builder.color = 'White'
      builder.turbo = false
      builder.wheels = 10
    end
  end
end
