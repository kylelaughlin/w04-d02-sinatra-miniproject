require "pry"
require "sinatra"

# Your routes go here:
git '/' do
  erb :root_path
end
