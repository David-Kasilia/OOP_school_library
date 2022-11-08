require './app'
require './get_user_input'
require_relative './list_all_books'
require_relative './list_all_people'

class CreateRentals
  def self.create_rental(app)
    puts 'Select a book from the following list by the book number: '
    ListAllBooks.list_all_books(app.books)
    selected_book_number = gets.to_i
    puts 'Book selected'
    puts 'Select a person from the following list by the person\'s number: '
    ListAllPeople.list_all_people(app.people)
    selected_person_number = gets.to_i
    puts 'Person selected'
    puts 'Date of renting book is added'
    app.create_a_rental(app.books[selected_book_number], app.people[selected_person_number])
    puts 'Rental book created successfully'
  end
end
