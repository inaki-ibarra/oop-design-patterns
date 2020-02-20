# frozen_string_literal: true

module TemplateMethod
  class BaseStorage
    def store(file)
      connect
      prepared_file = prepare(file)
      save(prepared_file)
    end

    protected

    def connect
      puts 'connect to Local Disk'
    end

    def prepare(file)
      puts "prepare file: #{file}"
    end

    def save(_file)
      puts 'save to Local Disk'
    end
  end

  class FileStorageA < BaseStorage
    protected

    def connect
      puts "connect to #{self.class}"
    end

    def save(_file)
      puts "save to #{self.class}"
    end
  end

  class FileStorageB < BaseStorage
    protected

    def prepare(file)
      puts "compress file: #{file}"
    end

    def connect
      puts "connect to #{self.class}"
    end

    def save(_file)
      puts "save to #{self.class}"
    end
  end
end
