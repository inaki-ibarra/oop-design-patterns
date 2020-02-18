# frozen_string_literal: true

require_relative 'website'
require_relative 'state'

module State
  class App
    def main
      website = Website.new

      website.render
      website.deploy

      website.render
      website.deploy

      website.render
      website.deploy

      { website: website }
    end
  end
end
