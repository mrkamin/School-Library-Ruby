require_relative '../trimmer_decorate.rb'
require_relative '../person'

describe TrimmerDecorator do
    context 'Use a Trimmer' do
        it 'return a trimmed person name' do
            person = Person.new(32, 'MohammadRafiAmin', true)
            trimmed = TrimmerDecorator.new(person)
            expect(trimmed.correct_name) == 'MohammadRafiAmin'
        end
    end
end
