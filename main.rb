require "pry"
require "sinatra"

# Your routes go here:
get '/' do
  erb :root_path
end

get '/temp_converter' do
  erb :temp_converter_form
end

get '/temp_conversion_results' do
  @temp = params['temp'].to_i
  @units = params['units']
  erb :temp_converter_results
end

get '/reverser' do
  erb :reverser_form
end

get '/word_reverser_result' do
  @phrase = params['phrase']
  erb :word_reverser_result
end




def conversion(temp, units)
  if units == "f"
    converted_temp = (temp - 32) * 5 / 9
  else
    converted_temp = (temp * 9 / 5)+ 32
    binding.pry
  end
  converted_temp
end

def new_unit(units)
  if units == "c"
    new_units = "f"
  else
    new_units = "C"
  end
  new_units
end
