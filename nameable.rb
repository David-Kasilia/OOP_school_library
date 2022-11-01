class Nameable
    def initialize(nameable)
        @nameable = nameable
    end

    def correct_name
        raise NotImplementedError
    end
    
end