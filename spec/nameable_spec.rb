require_relative '../separate_classes/nameable'
require_relative '../separate_classes/person'
require_relative '../decorator/trim_peoples_name_decorator'
require_relative '../decorator/capitalize_people_name_decorator'

describe Nameable do
    context 'Unit test for Nameable class' do
      person = Person.new(21, 'projectvidelishious')
      person.correct_name
      capitalized_person_name = CapitalizeDecorator.new(person)
      trimmed_person_name = TrimmerDecorator.new(capitalized_person_name)

      it 'Test for capitalize function to be working correctly' do
        expect(capitalized_person_name.correct_name).to eql('Projectvidelishious')
      end

      it 'Test for trrimed function to be working correctly' do
        expect(trimmed_person_name.correct_name).to eql('Projectvid')
      end

      it 'If it creates a new instance of person' do
        expect(person).to be_an_instance_of(Person)
    end

    end
end