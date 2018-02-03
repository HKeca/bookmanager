require './SaveManager'

class BookManager
    def initialize()
        @books = []
        self.load_books
    end

    def add_book(book)
        @books.push(book)
    end

    def remove_book(book)
        @books.slice(book.to_sym, 1)
    end

    def update_book(book)
        @books[book.to_sym] = book
    end

    def load_books()
        books = SaveManager.load_save()

        books.each_with_index { |value, index|
            @books[index] = value
        }
    end

    def save_books()
        SaveManager.save(@books)
    end

    def get_books()
        return @books
    end
end