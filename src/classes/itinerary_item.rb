class ItineraryItem
    attr_reader :name,:details,:price

    def initialize(name,details,price)
        @name = name
        @details = details
        @price = price
    end


end






  #use attr_reader to refactor below
    # def price 
    #     @price
    # end

    # def name
    #     @name
    # end

    # def details
    #     @details
    # end