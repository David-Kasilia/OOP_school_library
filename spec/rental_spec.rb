require_relative '../separate_classes/book'
require_relative '../separate_classes/student'
require_relative '../separate_classes/rental'

describe Rental do
    context 'Unit test for Rental Class' do
        book = Book.new('The Originals', 'Niklaus Mikaelson')
        person = Student.new(21, 'David', parent_permission: true)
        rental = Rental.new(book, person)

        it 'If it is a book' do
            expect(rental.book).to eql(book)
        end
        
        it 'If the book title is correct' do
            expect(rental.book.title) == 'The Originals'
        end

        it 'If the book author is correct' do
            expect(rental.book.author) == 'Niklaus Mikaelson'
        end

        it 'If it is a student' do
            expect(rental.person).to eql(person)
        end

        it 'If the student name is correct' do
            expect(rental.person.name) == 'David'
        end

        it 'If it creates a new instance of Rental' do
            expect(rental).to be_an_instance_of(Rental)
        end

    end
end