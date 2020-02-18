# frozen_string_literal: true

require_relative 'forward_iterator'
require_relative 'backward_iterator'

module Iterator
  class Collection
    attr_accessor :content

    def initialize(content)
      @content = content
    end

    def create_forward_iterator
      ForwardIterator.new(self)
    end

    def create_backward_iterator
      BackwardIterator.new(self)
    end
  end
end
