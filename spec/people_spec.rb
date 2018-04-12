require("rspec")
require("people")

describe("#Person") do
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

end
