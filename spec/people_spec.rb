require("rspec")
require("people")

describe("Person") do
  describe(".all") do
    it("will list all people that have been created") do
      expect(Person.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("will push a person into an array") do
      john = Person.new("John", "Hopkins", "Golf", "Florida")
      john.save()
      expect(Person.all()).to(eq([john]))
    end
  end

  describe("#id") do
    it("will increment id by one each time a new person is created") do
      john = Person.new("John", "Hopkins", "Golf", "Florida")
      john.save()
      mary = Person.new("Mary", "Hopkins", "Mini Golf", "Florida")
      mary.save()
      expect(john.id()).to(eq(2))
      expect(mary.id()).to(eq(3))
    end
  end

  describe(".find") do
    it("will find the correct person based in their id") do
      Person.clear()
      john = Person.new("John", "Hopkins", "Golf", "Florida")
      john.save()
      expect(Person.find(1)).to(eq(john))
    end
  end

end
