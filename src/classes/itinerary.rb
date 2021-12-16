require_relative './itinerary_item.rb'

class Itinerary
    
    def initialize
        @itinerary_items = []
    end
    
    def add_item(name,price)
        itinerary_item = ItineraryItem.new(name,price)
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

    def display_iti
        puts 
        puts "Itinerary"
        puts "*********"
        @itinerary_items.each do |item|
        puts item
        end
        return nil
    end

    def validate_item(name)
        @itinerary_items.each do |itinerary_item|
            if itinerary_item.name == name
                return name
            end
        end
        return nil
    end
end


# iti = Itinerary.new
# iti.add_item("golf_tour", 600.00)
# iti.add_item("wine_tour",400.00)
# iti.add_item("HBA_day_tour",1200.00)
# iti.add_item("WineGlassBay_day_tour",200.00)

# iti.display_iti
