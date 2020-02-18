# frozen_string_literal: true

module Iterator
  class ForwardIterator
    def initialize(collection)
      @position = nil
      @collection = collection
    end

    def next
      @position = if @position.nil?
                    0
                  else
                    @position + 1
                  end

      @collection.content[@position]
    end
  end
end
