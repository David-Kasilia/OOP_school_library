require_relative '../separate_classes/student'
require_relative '../separate_classes/classroom'

describe Student do
  context 'Unit test for Student Class' do
    age = 21
    name = 'David'
    classroom = 'Computer'
    parent_permission = true
    new_student = Student.new(age, name, parent_permission, classroom)

    it 'If the student age is correct' do
      expect(new_student.age).to eq(21)
    end

    it 'If the student name is correct' do
      expect(new_student.name).to eq('David')
    end

    it 'If the student classroom is correct' do
      expect(new_student.classroom).to eq('Computer')
    end

    it 'If it creates a new instance of student' do
      expect(new_student).to be_an_instance_of(Student)
    end
  end
end
