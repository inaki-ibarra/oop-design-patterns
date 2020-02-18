# frozen_string_literal: true

module State
  class Development
    def initialize(site)
      @site = site
    end

    def deploy
      @site.change_state(Staging.new(@site))
    end

    def render
      puts 'render development site'
    end
  end

  class Staging
    def initialize(site)
      @site = site
    end

    def deploy
      @site.change_state(Production.new(@site))
    end

    def render
      puts 'render staging site'
    end
  end

  class Production
    def initialize(site)
      @site = site
    end

    def deploy
      puts 'already in production'
    end

    def render
      puts 'render production site'
    end
  end
end
