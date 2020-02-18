# frozen_string_literal: true

module Iterator
  class BackwardIterator
    def initialize(collection)
      @collection = collection
      @position = collection.content.size
    end

    def next
      @position -= 1
      @collection.content[@position]
    end
  end
end
