def welcome
  puts "Hey! Welcome to Find A Hike!"
end

def get_starting_location_from_user
  puts "Please enter the city and state of where you would like to search for your hike: "
  gets.chomp
end

# def category_selection
#   puts "Search by: Difficulty and/or Type "
#   gets.chomp # Difficulty, type
# end
#
# def difficulty_levels
#   puts "Choose from difficulty '1-5'"
# end
# 
# def types
#   puts ""
# end
# def display_hikes
