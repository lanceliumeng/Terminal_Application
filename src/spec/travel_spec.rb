require './classes/itinerary_item.rb'
require './classes/itinerary.rb'
require './classes/order.rb'
# require '../classes/user.rb'
# require '../classes/travel.rb'

#test for class ItineraryItem
describe ItineraryItem do
    it "should return the itinerary name " do
        name = "golf tour"
        details = "5 Days,18 holes, Barnbougle Dunes, Lost Farm, LST golf clubs"
        price = 600.00
        itinerary_item = ItineraryItem.new(name,details,price)
        expect(itinerary_item.name).to eq(name)
    end

    it "should return the itinerary details " do
        name = "golf tour"
        details = "5 Days,18 holes, Barnbougle Dunes, Lost Farm, LST golf clubs"
        price = 600.00
        itinerary_item = ItineraryItem.new(name,details,price)
        expect(itinerary_item.details).to eq(details)
    end

    it "should return the itinerary price " do
        name = "golf tour"
        details = "5 Days,18 holes, Barnbougle Dunes, Lost Farm, LST golf clubs"
        price = 600.00
        itinerary_item = ItineraryItem.new(name,details,price)
        expect(itinerary_item.price).to eq(price)
    end

end

#test for class Itinerary
describe Itinerary do
    it "should be able to check the price of itinerary item" do
        name = "golf tour"
        details = "5 Days,18 holes, Barnbougle Dunes, Lost Farm, LST golf clubs"
        price = 600.00
        itinerary = Itinerary.new
        itinerary.add_item(name,details,price)
        expect(itinerary.get_price(name)).to eq(price)
    end

    it "should be able to add an item" do
        name = "golf tour"
        details = "5 Days,18 holes, Barnbougle Dunes, Lost Farm, LST golf clubs"
        price = 600.00
        itinerary = Itinerary.new
        itinerary.add_item(name,details,price)
        expect(itinerary.get_items().count).to be(1)
    end
end

#test for class Order
describe Order do
    it "should add an itinerary item to client order" do
        order = Order.new 
        name = "golf tour"
        qty = 1
        order.add_item(name,qty)
        expect(order.get_items().count).to be(1)
    end

    it "should update order qty if client add additional items" do
        order = Order.new 
        name = "golf tour"
        qty = 1
        qty_add = 2
        order.add_item(name,qty)
        order.add_item(name,qty_add)
        expect(order.get_items()[name]).to be(qty+qty_add)
    end

end

