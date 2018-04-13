require("sinatra")
require("sinatra/reloader")
require("./lib/people")


get("/") do
  erb(:index)
end
