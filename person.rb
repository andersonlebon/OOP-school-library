require './corrector.rb'

class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @correct = Corrector.new()
  end

  def validate_name
   @name = @correct.correct_name(@name)   
  end

  def of_age
    @age > 18
  end

  def can_use_services
    if age >= 18 || parent_permission
      true
    else
      false
    end
  end

  private :of_age
end
