
  def welcome
    puts "Hey! Welcome to Find A Hike!"
  end

  def get_starting_location_from_user
    puts "Please enter the city or state of where you would like to search for your hike: "
    gets.chomp
  end

  def get_activity_from_user
    puts "Which activity would you like your adventure to be?"
    puts "Please choose from the following:"
    puts "snow sports, mountain biking, caving, camping or hiking"
    gets.chomp
  end
