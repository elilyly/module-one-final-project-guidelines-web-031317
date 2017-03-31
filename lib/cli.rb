
  def welcome
    puts "Hey! Welcome to Find A Hike....."
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  end

  def get_starting_location_from_user
    puts "Please enter the city or state of where you would like to search for your hike: "

    gets.strip
  end

  def get_activity_from_user
    puts "Which activity would you like your adventure to be?"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "Please choose from the following:"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts "snow sports, mountain biking, caving, camping or hiking"
    gets.strip
    
  end
