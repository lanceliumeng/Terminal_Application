class Users
    
    attr_accessor :username,:password
    
    @@users_total = {}
    
    def initialize(username, password)
        @username = username
        @password = password
        @@users_total[username] = password
    end

    # def add_user(username, password)
    #     @@users_total[username] = password
    # end

    def print_password(username)
       @@users_total.keys.each do |each_name|
        if @username = username
            username
        end
       end
       puts @@users_total[username]
    end
end

user01 = Users.new("lance","abcd")
user02 = Users.new("Sara","23546")

user01.print_password("lance") #=> abcd
user02.print_password("Sara")  #=> 23546
# total_users = user01.print_details
# puts total_users

