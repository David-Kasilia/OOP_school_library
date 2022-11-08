require './app'
require './get_user_input'

def list_all_people(people)
    people.each_with_index do |person, index|
        puts "(#{index}) [#{person.class}] => ID: #{person.id}, Name: #{person.name}, Age: #{person.age}"
    end
end

def list_all_books(books)
    books.each_with_index do |book, index|
        puts "(#{index}) Book => Title: #{book.title}, Author: #{book.author}"
    end
end

def create_a_person(app)
    person_selection = GetUserInput.get_user_input_int('Do you want to create a student(1) or a teacher(2)? [Enter a number 1 or 2]: ')
    name = GetUserInput.get_user_input('Enter Name: ')
    age = GetUserInput.get_user_input('Enter Age: ')

    case person_selection
    when 1
        permission = GetUserInput.propmt_user?('Does Student Have Parent Permission')
        app.create_a_student(name, age, permission)
        puts "#{name.capitalize} was added as a student successfully"
    when 2
        specialization = GetUserInput.get_user_input('Enter Teacher\'s Specialization')
        app.create_a_teacher(name, age, specialization)
        puts "#{name.capitalize} was added as a teacher successfully"
    else
        puts 'Invalid Selection'
        puts 'Enter a number either 1 or 2'
    end
end

def create_book(app)
    title = GetUserInput.get_user_input('Enter Book Title')
    author = GetUserInput.get_user_input('Enter The Book Author')
    app.create_a_book(title, author)
    puts "#{title} book was added successfully"
end

def create_rental(app)
    puts 'Select a book from the following list by the book number: '
    list_all_books(app.books)
    selected_book_number = gets.to_i
    puts 'Book selected'
    puts 'Select a person from the following list by the person\'s number: '
    list_all_people(app.people)
    selected_person_number = gets.to_i
    puts 'Person selected'
    puts 'Date of renting book is added'
    app.create_a_rental(app.books[selected_book_number], app.people[selected_person_number])
    puts 'Rental book created successfully'
end

def list_all_rentals(app)
    selected_person_id = GetUserInput.get_user_input_int('Enter Person \'s ID: ')
    puts 'Here Is A List Of All The Rentals'
    @rentals = app.list_rentals_for_given_id(selected_person_id)
    @rentals.each { |rental| puts "Person: #{rental.person.name}
    Date: #{rental.date},
    Book '#{rental.book.title}' written by #{rental.book.author}"}
end

