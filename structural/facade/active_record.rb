module Facade
  class ActiveRecord
    def self.execute(sql)
      sql = Query.sanitize(sql)
      Database.connect.run(sql)
      Logger.info(sql)
    end
  end

  class Query
    def self.sanitize(sql)
      puts "sanitize SQL: #{sql}"
      sql
    end
  end

  class Logger
    def self.info(sql)
      puts "log SQL: #{sql}"
    end
  end

  class Database
    def self.connect
      @connected = true
      self
    end

    def self.run(sql)
      puts "execute SQL: #{sql}"
    end
  end
end
