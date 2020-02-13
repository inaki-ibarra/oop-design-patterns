module Iterator
  class BackwardIterator
    def initialize(collection)
      @collection = collection
      @position = collection.content.size
    end

    def get_next
      @position = @position - 1
      @collection.content[@position]
    end
  end
end
