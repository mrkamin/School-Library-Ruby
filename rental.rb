class Rental
  attr_accessor :date, :person, :book

  def initialize(date, person, book)
    @date = date
    @book = book
    @person = person
    person.rentals.push(self)
    book.rentals.push(self)
    
  end
end