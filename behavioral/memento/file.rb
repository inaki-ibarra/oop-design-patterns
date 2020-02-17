require_relative 'backup'

module Memento
  class File
    attr_accessor :text
    attr_reader :backups

    def initialize
      @backups = []
    end

    def text=(text)
      create_backup
      @text = text
    end

    def revert(backup)
      @text = backup.text
      @backups.delete_at(backup.index)
    end

    def create_backup
      @backups << Backup.new(self, @backups.length)
    end
  end
end
