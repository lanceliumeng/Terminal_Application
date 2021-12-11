require_relative './itinerary_item.rb'

class Itinerary
    
    def initialize
        @itinerary_items = []
    end
    
    def add_item(name,details,price)
        itinerary_item = ItineraryItem.new(name,details,price)
        @itinerary_items << itinerary_item
    end

    def get_price(name)
        item = @itinerary_items.find do |itinerary_item|
            itinerary_item.name == name
        end
        return item.price
    end

    def get_items
        return @itinerary_items
    end
end