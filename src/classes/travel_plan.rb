require_relative './itinerary.rb'
require_relative './order.rb'
require 'colorize'

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

    def total_order
        total_price = 0
        @order.get_items.each do |item,qty|
            total_price += (@itinerary.get_price(item) * qty)
        end
       total_price
    end

    def get_order
        @order
    end

    def notify  
        puts #blank space
        puts "Here is #{@name},please type down the itinerary name you want to go".colorize(:light_yellow)
    end

    def print_itinerary
        @itinerary.display_iti
    end 

    def print_order
        if @order
            @order.display
            # begin => for TTY processing bar
            bar = TTY::ProgressBar.new("Waiting ... [:bar]", total:30)
            30.times do
                sleep(0.1)
                bar.advance(1)
            end
            # end => for TTY processing bar
            puts ("Your current order price is: $%.2f/pp in total 🥳🥳" % total_order).colorize(:light_yellow)
        else
            "Thanks for you choosing our app :)"
        end
        puts "============================================="
        puts "Thanks for your order,please contact our operator to confirm your travel date".colorize(:light_green)
        puts # => blank space
        puts "Have a lovely day :)".colorize(:light_green)
        exit
    end

end

# name = "Your Current Travel Plan"
# travel_plans = {golf_tour:600,wine_tour:300}
# travel = TravelPlan.new(name,travel_plans)
# travel.notify
# travel.print_itinerary