# => Ruby Gems
require 'tty-font'
require 'colorize'
require 'tty-color'
require 'tty-prompt'
require 'tty-spinner'
require 'tty-progressbar'

# require for => TravelPlan class
require './classes/travel_plan.rb' 


# => for apps welcome font setting
def welcome_note
    font = TTY::Font.new(:standard)
    pastel = Pastel.new
    puts pastel.green(font.write("Travel",letter_spacing: 6))
    puts pastel.yellow(font.write("Agent",letter_spacing: 5))
    puts pastel.blue(font.write("System",letter_spacing: 6))
    puts
    puts "           =====================================================       "
    puts "                     Welcome to my travel agent system                 "
    puts "                     This app is created by Lance Liu                  "
    puts "             For Coder Academy Term 1 Ruby Terminal Assignment         "
    puts "                           Beta-Version : 1.0                          "
    puts "           =====================================================       "
    puts 
end



# # => For Exist client register
# def print_menu_01
#   # put choice[0] in here
  
# end


# => itinerary lookup method 
def brochure
  File.foreach("../data-base/brochure.txt") do |each_line|
      # each_line.strip!
      puts "#{each_line}".colorize(:light_yellow)
  end
end

# => terminal command flag function
def file_flag 
  if ARGV.length > 0
    flag, *rest = ARGV
    ARGV.clear 
    case flag 
    when "-help"
      puts "You can use flag -info to get ruby versions and gems details"
      puts "For more infomation,please find README file"
      exit
    when "-info"
      puts "This terminal application needs ruby #{RUBY_VERSION}"
      puts "This app also need rubu gems : colorize, tty-color, tty-prompt, tty-spinner and tty-progressbar"
      exit
    else 
      puts "I can not find this argument, please find more information in README file"
      exit
    end
  end
end

# => for new users register  
def register
  begin
      puts "Please type username"
      username_input = gets.chomp
      if username_input.empty? || username_input.match(/\s+/)
          raise "username cannot be empty or including blank space, please try again :)".colorize(:light_red)
      end
  rescue => e
      puts e.message
      retry
  end

  begin
      puts "Please type password"
      password_input = gets.chomp
      if password_input.empty? || password_input.match(/\s+/)
          raise "password cannot be empty or including blank space, please try again :)".colorize(:light_red)
      end
  rescue => e
      puts e.message
      retry
  end


  spinner = TTY::Spinner.new("[:spinner] Loading ......",format: :pulse_2)
  spinner.auto_spin
  sleep(3)
  spinner.stop("Thanks for your register 🥳")
  puts "Your username is: #{username_input} 👏"
  puts "Your password is: #{password_input} 👏"

end


# => when users complete log in, they will have options
def options
  while true
    prompt = TTY::Prompt.new
    options = ["Check Itinerary", "Travel Plan", "Exit"]
    puts  # => leave the blank for app structure more clean
    answer = prompt.select("Please tell us your choise",options,cycle: true)
    case answer
    when options[0]
      puts "Here is our itinerarys"
      # puts "#{iti_check}"
      # => brochure method for display itineraries
      brochure
    when options[1]
      puts "Please choose the itinerary you like，and place your order".colorize(:light_cyan)
      # Ojbect for => TravelPlan class
      itinerary_intro = {
      "golf tour 01" => 600, 
      "golf tour 02" => 400, 
      "LST wine tour" => 220,
      "HBA day tour" => 160,
      } 
travel_plan = TravelPlan.new("Current Travel Plan", itinerary_intro)
travel_plan.notify

loop do
  travel_plan.print_itinerary
  puts "when you finish your order, please type done".colorize(:light_yellow)
  input = gets.chomp
  if input == 'done'
    break
  end

  item = travel_plan.itinerary.validate_item(input)
  if item
    puts "Please type your order quantity :)".colorize(:light_cyan)
    quantity = gets.chomp.to_i
    if quantity > 0
      travel_plan.add_into_order(item,quantity)
    end
  end
end

travel_plan.print_order
    when options[-1]
      puts "Goodbye :)".colorize(:light_blue)
      exit
    end
  end
end
