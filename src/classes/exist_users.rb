require 'colorize'

class ExistUsers 
 
  @@users_details = {
    "lance" => 1234,
    "sara" => 5678,
    "thomas" => 6356
}

def username_check 
    puts "please type your username".colorize(:light_green)
    input = gets.chomp.to_s
    if @@users_details.key? input 
        puts "welcome back #{input}".colorize(:light_blue)
       
        begin
        puts "please enter your password".colorize(:light_green)
        answer = gets.chomp.to_i
            if answer != @@users_details[input]
                raise "Invalid password"
            else 
                puts "Log into System!".colorize(:light_green)
            end   
        rescue  => e
            puts e.message.colorize(:light_red)
            retry 
        end

    else
        puts "Your username is not in our database, please register first :)".colorize(:blue)
        exit
    end

end


end
# exist_user = ExistUsers.new
# current_user.username_check




#no need at this stage
# class Users
    
#     attr_accessor :username,:password
    
#     @@users_total = {}
    
#     def initialize(username, password)
#         @username = username
#         @password = password
#         @@users_total[username] = password
#     end

#     # def add_user(username, password)
#     #     @@users_total[username] = password
#     # end

#     def print_password(username)
#        @@users_total.keys.each do |each_name|
#         if @username = username
#             username
#         end
#        end
#        puts @@users_total[username]
#     end
# end

# user01 = Users.new("lance","abcd")
# user02 = Users.new("Sara","23546")

# user01.print_password("lance") #=> abcd
# user02.print_password("Sara")  #=> 23546
# # total_users = user01.print_details
# # puts total_users


