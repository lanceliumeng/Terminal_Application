require_relative './itinerary.rb'
require_relative './order.rb'

class TravelPlan
    attr_reader :name, :itinerary
  

    def initialize(name,travel_plans)
        @name = name
        @itinerary = Itinerary.new
        fill_plan(travel_plans)
        @order = Order.new
    end

    def fill_plan(travel_plans)
        travel_plans.each do |name,price|
            @itinerary.add_item(name,price)
        end
    end

    def add_into_order(travel_item,qty)
        @order.add_item(travel_item,qty)
    end

    def get_order
        @order
    end

end