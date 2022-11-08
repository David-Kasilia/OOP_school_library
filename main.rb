require './app'
require './run_app'

def exit_app(app)
  app.exit
  puts 'Library Data Has Been Saved'
  false
end

def menu_options
  [
    'Welcome To The Main Menu',
    'Please select an option by entering a number:',
    '1 - List all books',
    '2 - List all people',
    '3 - Create a person',
    '4 - Create a book',
    '5 - Create a rental',
    '6 - List all rentals for a given person id',
    '7 - Save all data and Exit Library'
  ]
end

def main
  app = App.new
  puts 'Welcome To The OOP School Library Application'

  app_should_run = true
  while app_should_run
    puts menu_options
    user_selection = gets.to_i
    case user_selection
    when 1 then list_all_books(app.books)
    when 2 then list_all_people(app.people)
    when 3 then create_a_person(app)
    when 4 then create_book(app)
    when 5 then create_rental(app)
    when 6 then list_all_rentals(app)
    when 7
      app_should_run = exit_app(app)
      break
    else puts 'Please input a number between 1 and 7'
    end
  end
end

main