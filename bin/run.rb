require_relative '../config/environment'
require_relative "../lib/cli.rb"


  welcome
  #state_name = get_starting_location_from_user
  query_term = ''
  while query_term != 'exit'
    query_term = get_activity_from_user
    if query_term == "exit"
      break
    else
    # category = Category.find_by('activity_type' => query_term)
    # hike = Hike.find_by('category_id' => category.id)
    category = Category.where('activity_type like ?', query_term).first
    hike = Hike.find_by('category_id' => category.id)
    # Client.where("orders_count = ?", params[:orders])
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Trail Name: #{hike.trail_name}\n\n"
    puts "Location: #{hike.location.city}, #{hike.location.state}"
    puts "Length of trail: #{hike.length} miles"
    puts "Description: #{hike.description}\n\n"
    end
  end
  puts "Enjoy your adventure!"

#output goes here
# welcome the user
# prompt them for input
# call the api
# parse the response based on the user input
# client = Adapters::TrailsApi.new
# response = client.fetch
# client.fetch
# binding.pry
# response.each do |h|
#   temp_location = Location.find_by_state(h[:state])
#   Hike.create({:trail_name => h[:trail_name], :location => temp_location})
# end
def data_input(response)
  cities = response['places']
  cities.each do |location|
    city_name = location["city"]
    state_name = location["state"]
    location_object = Location.find_or_create_by(city: city_name, state: state_name)
    location["activities"].each do |traits|
      activity_type_name = traits["activity_type_name"]
      category_object = Category.find_or_create_by(activity_type: activity_type_name)
      description = traits["description"]
      length = traits["length"]
      trail_name = traits["name"]
      hike_object = Hike.find_or_create_by(trail_name: trail_name, description: description, length: length, location: location_object, category: category_object )
    end
  end
end
