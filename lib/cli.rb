class Application

  def run
    puts " welcome"
    query = gets.strip
    Adapters::GoogleBooks.new(query).fetch_and_seed_books
  end


  def welcome
    puts "Hey! Welcome to Find A Hike!"
  end

  def get_starting_location_from_user
    puts "Please enter the city and state of where you would like to search for your hike: "
    gets.chomp
  end

  def get_activity_from_user
    puts "Which activity would you like your adventure to be?"
    puts "Please choose from the following:"
    puts "snow sports, mountain biking, caving, camping or hiking"
    gets.chomp
  end
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
