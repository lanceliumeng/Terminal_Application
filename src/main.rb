require 'colorize'
# require 'tty-color'
require 'tty-prompt'
# require 'tty-spinner'
# require 'tty-progressbar'

#begin  app welcome function
require './methods/methods.rb'
welcome_note
#end

prompt = TTY::Prompt.new
puts "Welcome to our application".colorize(:light_green)
puts "Please tell us if you are return client or new client".colorize(:light_yellow)

choices = ["Return-client", "New-client", "Exit"]
answer = prompt.select("Please tell us your choise",choices,cycle: true)

case answer
when choices[0]
    puts "Welcome back, please enter your username and password".colorize(:light_yellow)
when choices[1]
    puts "Welcome to choose our app, please finish your register".colorize(:light_green)
when choices[2]
    puts "Goodbye :)".colorize(:light_cyan)
    exit
else
    puts "Please choose 1, 2, or 3, Thank you :)".colorize(:light_red)
end



