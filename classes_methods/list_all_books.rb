require './app'
require './get_user_input'

class ListAllBooks
  def self.list_all_books(books)
    puts 'There are no books found, Kindly add at least one book' if books.empty?
    books.each_with_index do |book, index|
      puts "(#{index + 1}) Book => Title: #{book.title}, Author: #{book.author}"
    end
  end
end
