require_relative './separate_classes/book'
require_relative './separate_classes/rental'
require_relative './separate_classes/student'
require_relative './separate_classes/teacher'
require_relative './data_class/store_data'
require_relative './separate_classes/person'
require_relative './separate_classes/nameable'
require_relative './separate_classes/classroom'
require 'json'

class App
  attr_reader :books, :people, :rentals, :id
  def initialize
    @book_file = StoreData.new('books')
    @people_file = StoreData.new('persons')
    @rentals_file = StoreData.new('rentals')
    @books = @book_file.read.map { |arr| Book.new(arr['title'], arr['author']) }
    @people = @people_file.read.map do |arr|
      if arr['class'].include?('Student')
        Student.new(arr['age'], arr['name'], arr['parent_permission'], arr['classroom'])
      else
        Teacher.new(arr['age'], arr['name'], arr['specialization'])
      end
    end
    @rentals = @rentals_file.read.map do |arr|
      book = @books.select { |bk| bk.title == arr['book_title'] }[0]
      person = @people.select { |pers| pers.id == arr['person_id'] }[0]
      Rental.new(book, person, arr['date'])
    end
  end

  def create_a_student(age, name, permission)
    new_person = Student.new(age, name, permission)
    @people.push(new_person)
  end

  def create_a_teacher(age, name, specialization)
    new_person = Teacher.new(age, name, specialization)
    @people.push(new_person)
  end

  def create_a_book(title, author)
    new_book = Book.new(title, author)
    @books.push(new_book)
  end

  def create_a_rental(book, person)
    rental = Rental.new(book, person)
    @rentals.push(rental)
  end

  def list_rentals_for_given_id(id)
    selected_person = @people.select { |person| person.id == id }
    @rentals.each do |rental|
      if rental.person == selected_person[0]
        puts "Date: #{rental.date}, Book '#{rental.book.title}' written by #{rental.book.author}"
      end
    end
  end

  def exit
    @book_file.write(@books.map(&:create_object))
    @people_file.write(@people.map(&:create_object))
    @rentals_file.write(@rentals.map(&:create_object))
  end

end
