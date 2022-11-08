require 'date'

class Rental
  attr_accessor :date, :person, :book

  def initialize(date = DateTime.now, person, book)
    @date = date
    @person = person
    @book = book
    person&.add_book_rental(self)
    book&.add_book_rental(self)
  end

  def create_object
    {book_title: @book.title, person_id: @person, date: @date}
  end
end
