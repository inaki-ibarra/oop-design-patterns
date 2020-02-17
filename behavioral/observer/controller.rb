module Observer
  class Controller
    def initialize
      @observers = {}
    end

    def observe(observable, component)
      @observers.merge!(observable => [component])
    end

    def fetch_model
      model = User.new(name: 'John', age: 20)

      update_observers(:model, model)
    end

    def update_observers(observable, *args)
      @observers[observable].each do |observer|
        observer.update(*args)
      end
    end
  end

  class User
    attr_accessor :name, :age

    def initialize(name:, age:)
      @name = name
      @age = age
    end
  end
end
