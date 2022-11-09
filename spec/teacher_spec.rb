require_relative '../separate_classes/teacher'

describe Teacher do
  context 'Unit Test for Teacher Class' do
    age = 35
    name = 'Maloba'
    specialization = 'Business'
    teacher = Teacher.new(age, name, specialization)

    it 'If the teacher age is correct' do
      expect(teacher.age).to eq(35)
    end

    it 'If the teacher name is correct' do
      expect(teacher.name).to eq('Maloba')
    end

    it 'If it creates a new instance of teacher' do
      expect(teacher).to be_an_instance_of(Teacher)
    end

    it 'Test if teacher can rent a book' do
      expect(teacher.can_use_services?).to be_truthy
    end
  end
end
