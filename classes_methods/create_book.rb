require './app'
require './get_user_input'

class CreateBook
  def self.create_book(app)
    title = GetUserInput.get_user_input('Enter Book Title: ')
    author = GetUserInput.get_user_input('Enter The Book Author: ')
    app.create_a_book(title, author)
    puts "#{title} book was added successfully"
  end
end
