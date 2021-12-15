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


class Users 

    @@users_details = {
        'lance' => 1234,
        'sara' => 5678,
        'thomas' => 6356,
}

def username_check 
    puts "please type your username"
    input = gets.chomp.to_s
    if @@users_details.key? input 
        puts "welcome back #{input}"
       
        begin
        puts "please enter your password"
        answer = gets.chomp.to_i
            if answer != @@users_details[input]
            raise "Invalid password"
            else 
            puts "Log into System!"
            end   
        rescue  => e
            puts e.message 
            retry 
        end

    else
        puts "Your username is not in our database, please type it again or register your username :)"
    end

end
    
end

# current_user = Users.new
# current_user.username_check