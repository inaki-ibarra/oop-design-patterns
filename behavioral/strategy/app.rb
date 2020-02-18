# frozen_string_literal: true

require_relative 'sorter'

module Strategy
  class App
    def main(algo)
      sorter = Sorter.new
      huge_collection = (1..100).to_a.shuffle!

      if algo == 'Insertion'
        sorter.algo = Insertion.new
      elsif algo == 'Selection'
        sorter.algo = Selection.new
      end

      sorted = sorter.sort(huge_collection)

      { algo: sorter.algo.class, sorted: sorted }
    end
  end
end
