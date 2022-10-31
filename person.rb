class Person
    attr_reader :id
    attr_accessor :name, :age

    def initialize(age, name = 'Unknown', parent_permission: true)
        @id = Random.rand(1..10_000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end

    def can_use_services?
        @parent_permission || is_of_age?
    end

    private :of_age?

    def of_age?
        @age >= 18
    end
    
end