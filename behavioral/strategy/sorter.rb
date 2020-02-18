# frozen_string_literal: true

module Strategy
  class Sorter
    attr_accessor :algo

    def initialize
      @algo = RubyDefault.new
    end

    def sort(data)
      @algo.execute(data)
    end
  end

  class RubyDefault
    def execute(data)
      data.sort
    end
  end

  class Insertion
    def execute(data)
      (1...data.size).each do |i|
        j = i
        while j.positive? && (data[j - 1] > data[j])
          data[j], data[j - 1] = data[j - 1], data[j]
          j -= 1
        end
      end

      data
    end
  end

  class Selection
    def execute(data)
      (0...data.size).each do |j|
        i_min = j
        (j + 1...data.size).each do |i|
          i_min = i if data[i] < data[i_min]
        end

        data[j], data[i_min] = data[i_min], data[j]
      end

      data
    end
  end
end
