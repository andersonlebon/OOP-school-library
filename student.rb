require "./person.rb"

class Student < Person
    def initialize(age, classroom, name="Unknown", parent_permission=true)
        super(age, name, parent_permission)
        @classroom = classroom
    end
    def play_hooky
        return "¯\(ツ)/¯"        
    end
end

s = Student.new(233, "ulk")
