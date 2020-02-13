require_relative 'collection'

module Iterator
  class App
    def main(iterator)
      collection = Collection.new([1, 2, 3])

      if iterator == 'Forward'
        iterator = collection.create_forward_iterator
      elsif iterator == 'Backward'
        iterator = collection.create_backward_iterator
      else
        raise 'invalid iterator'
      end

      collection.content.length.times do
        print iterator.get_next
      end
    end
  end
end
