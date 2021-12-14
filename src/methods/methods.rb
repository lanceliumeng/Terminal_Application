require 'tty-font'
require 'colorize' 

# => for apps welcome font setting
def welcome_note
    font = TTY::Font.new(:standard)
    pastel = Pastel.new
    puts pastel.green(font.write("Travel",letter_spacing: 6))
    puts pastel.yellow(font.write("Agent",letter_spacing: 5))
    puts pastel.blue(font.write("System",letter_spacing: 6))
end

# => For Exist client register
def print_menu_01
  # put choice[0] in here
  
end


# => itinerary lookup method 
def brochure
  File.foreach("./data-base/brochure.txt") do |each_line|
      # each_line.strip!
      puts "#{each_line}".colorize(:light_yellow)
  end
end
