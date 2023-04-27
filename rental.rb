require_relative './book'
require_relative './person'

class Rental
  attr_accessor :person, :book, :date

  def initialize(book, person, date)
    @date = date

    @person = person
    puts person
    person.rentals.push(self)

    @book = book
    book.rentals.push(self)
  end
end