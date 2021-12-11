require './classes/itinerary_item.rb'
# require '../classes/itinerary.rb'
# require '../classes/order.rb'
# require '../classes/user.rb'
# require '../classes/travel.rb'

describe ItineraryItem do
    it "should return the itinerary name,details and price " do
        name = "golf tour"
        details = "5 Days,18 holes, Barnbougle Dunes, Lost Farm, LST golf clubs"
        price = 600.00
        itinerary_item = ItineraryItem.new(name,details,price)
        expect(itinerary_item.name).to eq(name)
        expect(itinerary_item.price).to eq(price)
        expect(itinerary_item.details).to eq(details)
    end
end



