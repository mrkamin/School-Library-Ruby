require_relative '../captalize_decorate'
require_relative '../person'

describe CapitalizeDecorator do
  context 'Capitalize decorator' do
    it 'return a capitalized person name' do
      person = Person.new(32, 'rafi', true)
      capitalized = CapitalizeDecorator.new(person)
      expect(capitalized.correct_name) == 'rafi'.capitalize
    end
  end
end
