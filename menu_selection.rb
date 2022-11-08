require_relative './main_menu'

# Handle main menu selction
  # rubocop:disable Metrics/CyclomaticComplexity
  public
  def menu_selection
    MainMenu.main_menu
    selected = gets.chomp.to_i
    case selected
    when 1
      list_all_books
    when 2
      list_all_people
    when 3
      create_a_person
    when 4
      create_a_book
    when 5
      create_a_rental
    when 6
      list_all_rentals
    when 7
      puts 'Thank you for using OOP school Library'
      exit_app
      exit
    end
    menu_selection
  end
  # rubocop:enable Metrics/CyclomaticComplexity