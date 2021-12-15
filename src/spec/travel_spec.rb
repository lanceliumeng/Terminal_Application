require './classes/itinerary_item.rb'
require './classes/itinerary.rb'
require './classes/order.rb'
require './classes/travel_plan.rb'
require './classes/users.rb'


#test for class ItineraryItem
describe ItineraryItem do
    it "should return the itinerary name " do
        name = "golf tour"
        price = 600.00
        itinerary_item = ItineraryItem.new(name,price)
        expect(itinerary_item.name).to eq(name)
    end

    it "should return the itinerary price " do
        name = "golf tour"
        price = 600.00
        itinerary_item = ItineraryItem.new(name,price)
        expect(itinerary_item.price).to eq(price)
    end

end

#test for class Itinerary
describe Itinerary do
    it "should be able to check the price of itinerary item" do
        name = "golf tour"
        price = 600.00
        itinerary = Itinerary.new
        itinerary.add_item(name,price)
        expect(itinerary.get_price(name)).to eq(price)
    end

    it "should be able to add an item" do
        name = "golf tour"
        price = 600.00
        itinerary = Itinerary.new
        itinerary.add_item(name,price)
        expect(itinerary.get_items().count).to be(1)
    end

    it "should return the item name for a valid item" do
        name = "golf tour"
        price = 600.00
        itinerary = Itinerary.new
        itinerary.add_item(name,price)
        expect(itinerary.validate_item(name)).to eq(name)
    end

    it "should return nil for a invalid item" do
        name = "golf tour"
        price = 600.00
        itinerary = Itinerary.new
        itinerary.add_item(name,price)
        expect(itinerary.validate_item("wine_tour")).to eq(nil)
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


#test for class TravelPlan
describe TravelPlan do
    it "should create a travel plan" do
        name = "Your Current Travel Plan"
        travel_plans = {}
        travel = TravelPlan.new(name,travel_plans)
        expect(travel.name).to eq(name)
    end

    it "should create an travel plan with a itinerary" do
        name = "Your Current Travel Plan"
        travel_plans = {golf_tour:600,wine_tour:300}
        travel = TravelPlan.new(name,travel_plans)
        expect(travel.itinerary.get_items.length).to eq(2)
    end

    it "should add a travel item to order" do
        name = "Your Current Travel Plan"
        travel_plans = {golf_tour:600,wine_tour:300}
        travel = TravelPlan.new(name,travel_plans)
        travel_item = "golf_tour"
        qty = 2
        travel.add_into_order(travel_item,qty)
        expect(travel.get_order().get_items().count).to eq(1)
    end

    it "should has a method to display welcome note" do
        name = "Your Current Travel Plan"
        travel_plans = {golf_tour:600,wine_tour:300}
        travel = TravelPlan.new(name,travel_plans)
        expect(travel.notify).to eq(nil)
    end

    it "should define a method which can print itinerary" do
        name = "Your Current Travel Plan"
        travel_plans = {golf_tour:600,wine_tour:300}
        travel = TravelPlan.new(name,travel_plans)
        expect(travel.print_itinerary).to eq(nil)
    end

    it "should add current order in total" do
        name = "Your Current Travel Plan"
        travel_plans = {"golf_tour" => 600, "wine_tour" => 300}
        travel = TravelPlan.new(name,travel_plans)
        travel_item = "golf_tour"
        qty = 2
        travel.add_into_order(travel_item,qty)
        travel_item = "wine_tour"
        qty = 2
        travel.add_into_order(travel_item,qty)
        expect(travel.total_order).to be(1800)
    end
end

#test for class Users
describe Users do

    it "can check if input usersname in database" do
        users_details = {"lance" => 0000}
        input_name = "lance"
        expect(users_details.key? input_name).to eq(true)
    end

     it "can check and notify users if password is invalid" do
        users_details = {"lance" => 0000}
        input_name = "lance"
        input_password = 1234
        expect(input_password == users_details[input_name]).to eq(false)
     end
end