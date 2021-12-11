require 'colorize'
# require 'tty-color'
require 'tty-prompt'
# require 'tty-spinner'
# require 'tty-progressbar'

#begin  app welcome function
require './methods/methods.rb'
welcome_note
#end

#Basic App Menu System
while true
prompt = TTY::Prompt.new
puts "Welcome to our application".colorize(:light_green)
puts "Please tell us if you are return client or new client".colorize(:light_yellow)

choices = ["Return-client", "New-client", "Exit"]
answer = prompt.select("Please tell us your choise",choices,cycle: true)

case answer
# => for return clients
when choices[0]  # ask username and password
    puts "Welcome back, please enter your username and password".colorize(:light_yellow)
    # valid || invalid username
    puts "Please enter your username:".colorize(:light_yellow)
    input_user = gets.chomp
    while true
        break if (input_user.length < 6)
        puts "#{input_user} was invalid username,username only can include letter and numbers,and it can be more than 6"
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

# => for new client
when choices[1]
    puts "Welcome to choose our app, please register first".colorize(:light_green)
when choices[2]
    puts "Goodbye :)".colorize(:light_cyan)
    exit
else
    puts "Please choose 1, 2, or 3, Thank you :)".colorize(:light_red)
end

end


