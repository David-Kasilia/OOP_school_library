require_relative './person'

class Teacher < Person
  def initialize(age, name, specialization)
    super(age, name)
    @specialization = specialization
  end

  def can_use_services?
    true
  end

  def create_object
    super()
    object_data = @object_data
    object_data[:specialization] = @specialization
    object_data[:class] = 'Teacher'
    object_data
    
  end
end
