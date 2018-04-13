require("sinatra")
require("sinatra/reloader")
require("./lib/people")


get("/") do
  @people = Person.all()
  erb(:index)
end

post("/") do
  fName = params.fetch("firstName")
  lName = params.fetch("lastName")
  hobby = params.fetch("hobby")
  location = params.fetch("location")

  person = Person.new(fName, lName, hobby, location)
  person.save()
  @people = Person.all()

  erb(:index)
end

get("/person/:id") do
  @people = Person.find(params[:id])
  erb(:person)
end
