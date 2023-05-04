require_relative '../rental'
require_relative '../person'
require_relative '../book'

describe 'Rental' do
  context 'create a rental' do
    it 'return true for person' do
      person = Person.new(32, 'Rafi', true)
      book = Book.new('Software', 'Hanschil')
      rental = Rental.new('2023', person, book)

      expect(rental.person) == person
    end
  end
end

describe 'Rental' do
  before :each do
    person = Person.new 23, 'Mpatchie', true
    book = Book.new 'Enjoy Life', 'jw.org'
    @rental = Rental.new 'May 4, 2023', person, book
  end
  describe "#new" do
    it "takes three parameters and returns a Student object" do
      expect(@rental).to be_an_instance_of Rental
    end
  end
  describe "#date" do
    it "returns the correct date" do
      expect(@rental.date).to eq('May 4, 2023')
    end
  end
  describe "#person_name" do
    it "returns the correct person name" do
      expect(@rental.person.name).to eq('Mpatchie')
    end
  end
  describe "#book_title" do
    it "returns the correct book title" do
      expect(@rental.book.title).to eq('Enjoy Life')
    end
  end
end
