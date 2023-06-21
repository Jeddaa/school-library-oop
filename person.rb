require_relative 'nameable'
require_relative 'capitalize_decorator'
require_relative 'trimmer_decorator'

class Person < Nameable
  def initialize(age, name, parent_permission: true)
    super()
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

  def correct_name()
    @name
  end
end
