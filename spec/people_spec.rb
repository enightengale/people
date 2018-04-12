require("rspec")
require("people")

describe("#Person") do
  describe(".all") do
    it("will list all people that have been created") do
      expect(Person.all()).to(eq([]))
    end
  end
end
