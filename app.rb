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

    # List all books method
    def list_all_books
        puts 'There are no books found, Kindly add at least one book' if @books.empty?
        @books.each_with_index do |book, index|
            puts "(#{index + 1}) Book => Title: #{book.title}, Author: #{book.author}"
        end
    end
