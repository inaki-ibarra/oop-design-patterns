module Observer
  class UserComponent
    def update(model)
      render(model)
    end

    def render(model)
      if model
        puts "receive model: #{model.class}"
        puts "render user profile"
      end
    end
  end
end
