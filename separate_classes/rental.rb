require 'date'

class Rental
  attr_accessor :date, :person, :book

  def initialize(book, person, date = DateTime.now)
    @date = date
    @book = book
    @person = person
    book&.add_book_rental(self)
    person&.add_book_rental(self)
  end

  def create_object
    {book_title: @book.title, person_id: @person, date: @date}
  end
end
