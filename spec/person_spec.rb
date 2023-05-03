require_relative '../person'

describe 'Person' do
    context 'create an instance of person class' do
        person = Person.new(32, 'Rafi', true)

        it 'returns a Person object from three parameters' do
            expect(person.class) == Person
        end
        it 'returns correct name of person' do
            expect(person.age).to eq 32
            expect(person.name).to eq 'Rafi'
            expect(person.parent_permission).to eq true
        end
    end

    context 'create an instance of Person class' do
        frances = Person.new(32, 'Frances', false)
        it 'Correct name' do
            expect(frances.correct_name).to eq 'Frances'
        end

        it 'use service' do
            expect(frances.can_use_services?).to eq true
        end
    end
end
