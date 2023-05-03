require_relative '../book'

describe 'Book' do
  context 'create an instance of Book class' do
    book = Book.new('Programing', 'Amin')

    it 'parameters and returns a Book object' do
      expect(book.class) == Book
    end
  end
end