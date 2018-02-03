require './Book'
require './BookManager'

class App
    def initialize()
        @saveData = {}
    end

    def run()
        bookm = BookManager.new()

        puts bookm.get_books
    end
end
