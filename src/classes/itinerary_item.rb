class ItineraryItem
    attr_reader :name, :price

    def initialize(name,price)
        @name = name
        @price = price
    end

    def to_s 
      "#{@name} " +  " "*(25-@name.length)+"     ========> $#{@price}"
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