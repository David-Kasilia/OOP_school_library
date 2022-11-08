require './app'
require './get_user_input'

class CreatePerson
  def self.create_a_person(app)
    person_selection = GetUserInput.get_user_input_int(
      'Do you want to create a student(1) or a teacher(2)? [Enter a number 1 or 2]: '
    )
    name = GetUserInput.get_user_input('Enter Name: ')
    age = GetUserInput.get_user_input('Enter Age: ')

    case person_selection
    when 1
      permission = GetUserInput.propmt_user?('Does Student Have Parent Permission')
      app.create_a_student(name, age, permission)
      puts "#{name.capitalize} was added as a student successfully"
    when 2
      specialization = GetUserInput.get_user_input('Enter Teacher\'s Specialization: ')
      app.create_a_teacher(name, age, specialization)
      puts "#{name.capitalize} was added as a teacher successfully"
    else
      puts 'Invalid Selection'
      puts 'Enter a number either 1 or 2'
    end
  end
end
