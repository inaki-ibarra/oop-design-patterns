module Builder
  class Director
    def build_race_car(builder)
      builder.reset
      builder.set_color('Red')
      builder.set_turbo(true)
      builder.set_wheels(4)
    end

    def build_truck(builder)
      builder.reset
      builder.set_color('White')
      builder.set_turbo(false)
      builder.set_wheels(10)
    end
  end
end
