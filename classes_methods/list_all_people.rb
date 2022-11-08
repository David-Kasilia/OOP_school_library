require './app'
require './get_user_input'

class ListAllPeople
  def self.list_all_people(people)
    puts 'There are no people in the list. Kindly add at least one person' if people.empty?
    people.each_with_index do |person, index|
      puts "(#{index + 1}) [#{person.class}] => ID: #{person.id}, Name: #{person.age}, Age: #{person.name}"
    end
  end
end
