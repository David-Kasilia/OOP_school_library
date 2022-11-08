require './app'
require './menu_selection'
require './classes_methods/create_a_person'
require './classes_methods/create_book'
require './classes_methods/create_rentals'
require './classes_methods/list_all_books'
require './classes_methods/list_all_people'
require './classes_methods/list_all_rentals'

# rubocop:disable Metrics/CyclomaticComplexity
def exit_app(app)
  app.exit
  puts 'Library Data Has Been Saved'
  puts 'Thank you for using OOP School Library. See you Again!!'
  false
end

def main
  app = App.new
  puts 'Welcome To The OOP School Library Application'

  app_should_run = true
  while app_should_run
    puts MainMenuOptions.menu_options
    user_selection = gets.to_i
    case user_selection
    when 1 then ListAllBooks.list_all_books(app.books)
    when 2 then ListAllPeople.list_all_people(app.people)
    when 3 then CreatePerson.create_a_person(app)
    when 4 then CreateBook.create_book(app)
    when 5 then CreateRentals.create_rental(app)
    when 6 then ListAllRentals.list_all_rentals(app)
    when 7
      app_should_run = exit_app(app)
      break
    else puts 'Please input a number between 1 and 7'
    end
  end
end

main
# rubocop:enable Metrics/CyclomaticComplexity
