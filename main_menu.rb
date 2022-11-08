class MainMenu

  def start_menu
    puts 'Welcome to The OOP School Library Application'
    until main_menu
      input = gets.chomp
      if input == '7'
        puts 'Thank you for using OOP school Library'
        break
      end
      menu_selection selection
    end
  end
  def main_menu
    puts 'Welcome To The Main menu'
    puts 'Please choose an option by entering a number: 
        1 - List all Books
        2 - List all People
        3 - Create a person
        4 - Create a book
        5 - Create a rental
        6 - List all rentals for a given person id
        7 - Exit Library'
    puts 'Waiting for Selection...'
  end

  def menu_selection(selection)
    case selection
    when '1'
      list_all_books
    when '2'
      list_all_people
    when '3'
      create_a_person
    when '4'
      create_book
    when '5'
      create_rental
    when '6'
      list_all_rentals
    else
      puts 'Invalid Number entered'
      puts 'Please enter a valid number between 1 and 7'
    end
  end
end