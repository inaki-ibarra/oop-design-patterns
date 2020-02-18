module State
  class Website
    attr_reader :state

    def initialize
      @state = Development.new(self)
    end

    def deploy
      @state.deploy
    end

    def render
      @state.render
    end

    def change_state(state)
      @state = state
    end
  end
end
