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
