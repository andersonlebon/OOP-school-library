class Person
    def initialize(age, name="Unknown", parent_permission=true)
        @id = Random.rand(1..1000)
        @name = name
        @age = age
        @parent_permission = parent_permission
    end
    attr_reader :id,:name,:age
    attr_writer :name,:age

    def is_of_age
        if @age >18
            true
        else
            false
        end
    end

    def can_use_services
        if age >= 18 || parent_permission
            true
        else
            false
        end        
    end

    private :is_of_age
end

p = Person.new(20)

puts p.is_of_age
# puts p.parent_permission