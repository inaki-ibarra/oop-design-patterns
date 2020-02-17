require_relative 'file'

module Memento
  class App
    def main
      file = File.new

      file.text = '1st change'
      file.text = '2nd change'
      file.text = '3rd change'

      file.backups.last.restore
      puts "reverted to: #{file.text}"

      file.backups.last.restore
      puts "reverted to: #{file.text}"
    end
  end
end
