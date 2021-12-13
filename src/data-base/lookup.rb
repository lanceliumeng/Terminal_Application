
def iti_check
    itinerary_01 = {
    name:"Golf Tour 5 days",
    details:"18 holes, Barnbougle Dunes, Lost Farm, LST",
    price: "$600/pp"
}
    itinerary_02 = {
    name:"Golf Tour 3 days",
    details:"18 holes x 3, Barnbougle Dunes, Lost Farm, LST",
    price: "$600/pp"
}
    itineraries = "#{itinerary_01},\n#{itinerary_02}"
    puts itineraries
end

