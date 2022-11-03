require_relative './book'
require_relative './rental'
require_relative './student'
require_relative './teacher'

class App
    def initialize
        @books = []
        @rentals = []
        @people = []
    end

    # List all books method
    def list_all_books
        puts 'There are no books found, Kindly add at least one book' if @books.empty?
        @books.each_with_index do |book, index|
            puts "(#{index + 1}) Book => Title: #{book.title}, Author: #{book.author}"
        end
    end
    # List all people method
    def list_all_people
        puts 'There are no people in the list. Kindly add at least one person' if @people.empty?
        @people.each_with_index do |person, index|
            puts "(#{index + 1}) [#{person.class}] => Id: #{person.id}, Name: #{person.name}, Age: #{person.age}"
        end
    end
    # Create a person method (teacher or student not a plain person)
    def create_a_person()
        puts 'Do you want to create a student(1) or a teacher(2)? [Enter a number 1 or 2]: ' 
        cartegory = gets.chomp.to_i
        case cartegory
        when 1
            print 'Enter the student name: '
            name = gets.chomp
            print 'Enter the student\'s age: '
            age = gets.chomp
            @people.push(Student.new('classroom', name, age))
            puts "#{name.capitalize} was added as a student successfully"
            when 2
            print 'Enter the teacher name: '
            name = gets.chomp
            print 'Enter the teacher\'s age: '
            age = gets.chomp
            print 'Enter the teacher\'s specialization: '
            specialization = gets.chomp
            @people.push(Teacher.new(name, age, specialization))
            puts "#{name.capitalize} was added as a teacher successfully"
        end
    end
      # Create a book
      def create_a_book
        puts 'Create a new book'
        print 'Enter the book title: '
        title = gets.chomp
        print 'Enter the book author: '
        author = gets.chomp
        @books.push(Book.new(title, author))
        puts "#{title} book was added successfully"
    end
   # Create a rental 
   def create_a_rental()
    puts 'Select a book from the following list by the book number: '
    list_all_books
    book_number = gets.chomp.to_i
    puts 'Book selected'
    puts 'Select a person from the following list by the person\'s number: '
    list_all_people
    person_number = gets.chomp.to_i
    puts 'Person selected'
    print 'Date: '
    date = gets.chomp
    puts 'Date of renting book is added'
    @rentals.push(Rental.new(date, @people[person_number - 1], @books[book_number - 1]))
    puts 'Rental book created successfully'
    end    
