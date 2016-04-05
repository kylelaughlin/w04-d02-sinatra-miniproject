require "pry"
require "sinatra"

# Your routes go here:
get '/' do
  erb :root_path
end
