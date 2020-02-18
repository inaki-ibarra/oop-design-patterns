# frozen_string_literal: true

module Memento
  class Backup
    attr_reader :text, :index

    def initialize(file, index)
      @file = file
      @index = index
      @text = file.text
    end

    def restore
      @file.revert(self)
    end
  end
end
