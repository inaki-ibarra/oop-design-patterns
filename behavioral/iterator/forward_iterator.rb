module Iterator
  class ForwardIterator
    def initialize(collection)
      @position = nil
      @collection = collection
    end

    def get_next
      if @position.nil?
        @position = 0
      else
        @position = @position + 1
      end

      @collection.content[@position]
    end
  end
end
