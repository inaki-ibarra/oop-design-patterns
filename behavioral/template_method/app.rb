# frozen_string_literal: true

require_relative 'base_storage'

module TemplateMethod
  class App
    def main(preference)
      if preference == 'FileStorageA'
        storage = FileStorageA.new
      elsif preference == 'FileStorageB'
        storage = FileStorageB.new
      end

      storage.store('test.txt')
    end
  end
end
