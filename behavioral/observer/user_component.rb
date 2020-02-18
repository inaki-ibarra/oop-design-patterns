# frozen_string_literal: true

module Observer
  class UserComponent
    def update(model)
      render(model)
    end

    def render(model)
      return unless model

      puts "receive model: #{model.class}"
      puts 'render user profile'
    end
  end
end
