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
    # List all people method
    def list_all_people
        puts 'There are no people in the list. Kindly add at least one person' if @people.empty?
        @people.each_with_index do |person, index|
            puts "(#{index + 1}) [#{person.class}] => Id: #{person.id}, Name: #{person.name}, Age: #{person.age}"
        end
    end