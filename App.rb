require './BookManager'

class App
    def run()
        bookm = BookManager.new()

        puts bookm.get_books
    end
end
