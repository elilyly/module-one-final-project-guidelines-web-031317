require_relative '../config/environment'
require_relative "../lib/cli.rb"

 welcome
 state_name = get_starting_location_from_user
 activity_type = get_activity_from_user
#output goes here
# welcome the user
# prompt them for input
# call the api
# parse the response based on the user input
client = Adapters::TrailsApi.new
response = client.fetch
response["places"].collect do |state_hash|
  state_hash["activities"].collect do |activity_name|
    activity_name["activity_type_name"]
  end
end


  def check_outputs
    if response["places"]["state"] == state_name && response["places"]["activities"]["activity_type_name"] == activity_name
      response["places"]["activities"]["name"]
    end
  end

binding.pry
"hi"
