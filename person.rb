class Person
  def initialize(age, name: 'unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def of_age?
    return true if @age >= 18

    false
  end

  def can_use_services?
    @parent_permission || of_age?
  end
end