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
end