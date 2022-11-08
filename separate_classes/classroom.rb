class Classroom
  attr_accessor :label
  attr_reader :students

  def initialize(label)
    @label = label
    @students = []
  end

  def add_student_to_classroom(student)
    @students.push(student) unless @students.include?(student)
    student.classroom.push(self) unless student.classroom.include?(self)
  end
end
