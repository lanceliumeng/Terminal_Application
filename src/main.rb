# => Ruby Gems
require 'colorize'
# require 'tty-color'
require 'tty-prompt'
# require 'tty-spinner'
# require 'tty-progressbar'

# => methods
require "./methods/methods.rb"

# require for => TravelPlan class
require './classes/travel_plan.rb' 


# => terminal command flag function
file_flag

# => app welcome note display function
welcome_note



# Basic App Menu System
while true
prompt = TTY::Prompt.new
puts "Welcome Welcome Welcome".colorize(:light_green)
puts  #=> just for blank space
puts "Please find our options below".colorize(:light_yellow)

# => choices menu
choices = ["Return-client", "New-client", "Exit"]
puts  #=> just for blank space
answer = prompt.select("Please tell us your choise",choices,cycle: true)

case answer
# => for return clients
when choices[0]  # ask username and password
  puts "Welcome back, please enter your username and password to log in".colorize(:light_yellow)
   # valid || invalid username
  puts "Please enter your username:".colorize(:light_yellow)
  input_user = gets.chomp
  while true
      break if (input_user.length < 3)
      puts "#{input_user} was invalid username,username letter needs more than 3"
      input_user = gets.chomp
  end
  # valid || invalid password
  puts "Please enter your password:".colorize(:light_yellow)
  input_password = gets.chomp
  while true
      break if (input_password.length != 0)
      puts "your password can not empty,please enter again"
      input_password = gets.chomp
  end

when choices[1]
   puts "Thanks for choosing the application,for new user, please register first :)"
   register

   options

when choices[-1]
    puts "Exit the system :)".colorize(:blue)
    puts "See you again!".colorize(:blue)
    exit
end
end



# # => for new client
# when choices[1]
#     puts "Welcome to choose our app, please register first".colorize(:light_green)



# when choices[2]
#     puts "Goodbye :)".colorize(:light_cyan)
#     exit
# else
#     puts "Please choose 1, 2, or 3, Thank you :)".colorize(:light_red)
# end

# end





# # Ojbect for => TravelPlan class
# itinerary_intro = {
#   "golf tour 01" => 600, 
#   "golf tour 02" => 400, 
#   "LST wine tour" => 220,
#   "HBA day tour" => 160,
# }
# travel_plan = TravelPlan.new("Your travel plan", itinerary_intro)
# travel_plan.notify

# loop do
#   travel_plan.print_itinerary
#   puts "when you finish your order, please type done"
#   input = gets.chomp
#   if input == 'done'
#     break
#   end

#   item = travel_plan.itinerary.validate_item(input)
#   if item
#     puts "Please type your order quantity :)"
#     quantity = gets.chomp.to_i
#     if quantity > 0
#       travel_plan.add_into_order(item,quantity)
#     end
#   end
# end

# travel_plan.print_order

# # => print itinerary brochure for users
# brochure