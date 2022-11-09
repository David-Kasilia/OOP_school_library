require_relative '../separate_classes/book'

describe Book do
  context 'Unit Test For Book Class' do
    before(:context) do
      title = 'The Originals'
      author = 'Niklaus Mikaelson'
      @book = Book.new(title, author)
    end
    it 'If Book Class creates a new instance.' do
      expect(@book).to be_an_instance_of(Book)
    end
    it 'If Book Class has a book title' do
      expect(@book.title).to eq('The Originals')
    end
    it 'If Book Class has a book author' do
      expect(@book.author).to eq('Niklaus Mikaelson')
    end
  end
end
