require_relative './itinerary.rb'

class TravelPlan
    attr_reader :name, :plan
    attr_accessor :details

    def initialize(name,travel_plans)
        @name = name
        @plan = Itinerary.new
        fill_plan(travel_plans)
    end

    def fill_plan(travel_plans)
        travel_plans.each do |name,price|
            @plan.add_item(name,price)
        end
    end

end