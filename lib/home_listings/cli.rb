#this is the cli controller
class HomeListings::CLI
  def call
    welcome
    details
  end

  def welcome
    puts "Welcome to the Home Listings CLI gem"
    list_provinces
    puts "Please choose a province"
  end

  def list_provinces
    puts <<-DOC.gsub /^\s*/, ""
      1. ON
      2. AB
      3. BC
    DOC
  end

  def details
    input = ""
    while input != "exit"
      input = gets.strip.to_i
      case input
      when 1
        puts "Available Homes in Ontario"
        puts "Title:, Price:, Location:, Description:"
      when 2
        puts "Available Homes in Alberta"
        puts "Title:, Price:, Location:, Description:"
        goodbye
      else
        puts "You have made an invalid entry"
        welcome
        details
        goodbye
      end
    end
  end

  def goodbye
    input = ""
    if input == "exit"
      puts "Thank you for checking the list of homes in your province"
      puts "Bye"
    end
  end


end
