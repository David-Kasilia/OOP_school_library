require 'date'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author, rentals = [])
    @title = title
    @author = author
    @rentals = rentals
  end

  def add_book_rental(rental)
    @rentals.push(rental) unless @rentals.include?(rental)
  end

  def create_object
    { title: @title, author: @author }
  end
end
