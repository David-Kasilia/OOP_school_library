require_relative './book'
require_relative './rental'
require_relative './student'
require_relative './teacher'

class App
    def initialize
        @books = []
        @rentals = []
        @people = []
    end

    # List all books
    def list_all_books
        if @books.empty?
            puts 'There are no books found, Kindly add at least one book'
        end
        @books.book_index do |book, index|
            puts "(#{index + 1}) Book => Title: #{book.title}, Author: #{book.author}"
        end           
    end

    

end