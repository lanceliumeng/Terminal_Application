require 'colorize'

class Order 
    def initialize
        @order_items = Hash.new(0)  
        #=>Hash.new(0) sets default value for any key to 0
        #=>while {} sets nil
    end

    def add_item(name,qty)
        @order_items[name] += qty
    end

    def get_items
        @order_items
    end

    def display
        puts #blank space
        puts "Thanks for your order, please find the details below:".colorize(:light_cyan)
        @order_items.each do |name,qty|
            puts "Tour: #{name} " +  " "*(18 - name.length)+" ******** Qty: #{qty} "
        end
    end
end