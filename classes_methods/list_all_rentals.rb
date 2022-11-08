require './app'
require './get_user_input'

class ListAllRentals
    def self.list_all_rentals(app)
        selected_person_id = GetUserInput.get_user_input_int('Enter Person \'s ID: ')
        puts 'Here Is A List Of All The Rentals'
        @rentals = app.list_rentals_for_given_id(selected_person_id)
        @rentals.each { |rental| puts "Date: #{rental.date}, Book '#{rental.book.title}' written by #{rental.book.author}" }
    end
end