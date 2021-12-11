# => for apps welcome font setting
require 'tty-font'
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