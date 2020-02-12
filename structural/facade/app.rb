require_relative 'active_record'

module Facade
  class App
    def main
      sql = "SELECT * FROM users"
      ActiveRecord.execute(sql)
    end
  end
end
