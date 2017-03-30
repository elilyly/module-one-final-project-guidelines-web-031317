require_relative '../config/environment'
require_relative "../lib/cli.rb"

 # welcome
 # state_name = get_starting_location_from_user
 # activity_type = get_activity_from_user
#output goes here
# welcome the user
# prompt them for input
# call the api
# parse the response based on the user input
client = Adapters::TrailsApi.new
response = client.format_data
client.fetch
# binding.pry
# response.each do |h|
#   temp_location = Location.find_by_state(h[:state])
#   Hike.create({:trail_name => h[:trail_name], :location => temp_location})
# end
def data_input(response)
  response.each do |location|
    binding.pry
  end
end

data_input(response)

"hi"
