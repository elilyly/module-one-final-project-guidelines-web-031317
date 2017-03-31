require_relative '../config/environment'
require_relative "../lib/cli.rb"


  welcome

  query_term = ''
  while query_term != 'exit'
    query_term = get_activity_from_user
    location_query = get_starting_location_from_user
    if query_term == "exit"
      break
    else
    locations = Location.where('state like ?', location_query).pluck(:id)
    category = Category.where('activity_type like ?', query_term).pluck(:id)
    hikes = Hike.where(location_id:locations,category_id:category)
    hikes.each do |hike|
      puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
      puts "Trail Name: #{hike.trail_name}"
      puts "                                                   "
      puts "Location: #{hike.location.city}, #{hike.location.state}"
      puts "Length of trail: #{hike.length} miles"
      puts "Description: #{hike.description}"
      puts "                                                   "
    end
    end
  end
   puts "Enjoy your adventure!"
  # puts"$             /^\/^\                                              $"
  # puts"$           _|__|  O|                                             $"
  # puts"$ \/     /~     \_/ \                                             $"
  # puts"$  \____|__________/  \                                           $"
  # puts"$        \_______      \                                          $"
  # puts"$                `\     \                  \                      $"
  # puts"$                  |     |                  \                     $"
  # puts"$                 /      /                    \                   $"
  # puts"$                /     /                       \                  $"
  # puts"$              /      /                         \ \               $"
  # puts"$             /     /                            \  \             $"
  # puts"$           /     /             _----_            \   \           $"
  # puts"$         /     /           _-~      ~-_          |   |           $"
  # puts"$        (      (        _-~    _--_    ~-_      _/   |           $"
  # puts"$         \      ~-____-~     _-    ~-_~    ~-_-~     /           $"
  # puts"$           ~-           _-~_          -_~       _-~    - jurcy -  $"
  # puts"$             ~--______-~                 ~-___-~                 $"

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
