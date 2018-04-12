require("pry")

class Person
  @@people = []

  def initialize(firstName, lastName, hobby, location)
    @firstName = firstName
    @lastName = lastName
    @hobby = hobby
    @location = location
  end

  def self.all()
    @@people
  end

  def save()
    @@people.push(self)
  end
end
