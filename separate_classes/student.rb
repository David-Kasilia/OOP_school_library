require_relative './person'

class Student < Person
  attr_reader :classroom, :parent_permission

  def initialize(classroom = [], age, name, parent_permission)
    super(age, name)
    @classroom = classroom
    @parent_permission = parent_permission
  end

  def add_classroom(classroom)
    @classroom.push(classroom) unless @classroom.include?(classroom)
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end

  def create_object
    super()
    object_data = @object_data
    object_data[:classroom] = @classroom
    object_data[:class] = 'Student'
    object_data[:parent_permission] = @parent_permission
    object_data
  end
end
