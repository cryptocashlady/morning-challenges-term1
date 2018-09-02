# - create a well named variable that contains the amount of time it took you to get to class
# time_to_class = "60 minutes."
# puts "I caught a bus from Fig Tree Pocket to North Quay and it took #{time_to_class}"
# - create a complete sentence  that lets us know how you got to class and how long it took
# - print this complete sentence


# you are working at a bar where you have a current backlog of drinks to make:
Drink_Backlog = {"cocktail"=>3, "water"=>2, "beer"=>6}
# 3 cocktails
# 2 waters
# and
# 6 beers
# write a program that asks the customer for their order.
# if they order a cocktail, add one to the number of cocktails you need to make,
# if they order a water, add one to the number of waters you need to make,
# if they order a beer, add one to the number of beers you need to pour
puts "what would you like to order, cocktails, water or beer? "
order_input = gets.chomp
unless order_input == "finished"
    if order_input == "cocktail"
        Drink_Backlog["cocktail"] += 1
    elsif order_input == "water"
        Drink_Backlog["water"] += 1    
    elsif order_input == "beer"
        Drink_Backlog["beer"] += 1
    puts "Is that all the drinks you would like to order, if so type finished?"
    order_input = gets.chomp
    end
end




# cocktails sell for $22, and cost $8 to make
# beer sell for $12, and cost $3 to pour
# water sell for $6, and cost $0.15 to make
# print out the total profit for the orders you have