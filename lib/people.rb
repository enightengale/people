require("pry")

class Person
  @@people = []

  attr_reader :id

  def initialize(firstName, lastName, hobby, location)
    @firstName = firstName
    @lastName = lastName
    @hobby = hobby
    @location = location
    @id = @@people.length + 1
  end

  def self.all()
    @@people
  end

  def save()
    @@people.push(self)
  end
end

binding.pry
