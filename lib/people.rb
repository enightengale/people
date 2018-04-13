require("pry")

class Person
  @@people = []

  # we want to be able to read each Person's id so that we can
  # use that id to find that Person and all their parameters
  attr_reader :id

  # pass in these parameters to help define your Person!!
  def initialize(firstName, lastName, hobby, location)
    @firstName = firstName
    @lastName = lastName
    @hobby = hobby
    @location = location
    # every time a new Person is created we add one to id so
    # that each Person has a unique id
    @id = @@people.length + 1
  end

  # show all of the Person's that have been pushed into @@people
  def self.all()
    @@people
  end

  # push "this" Person into the array @people
  def save()
    @@people.push(self)
  end
end

binding.pry
