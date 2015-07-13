# Program 5 - Calculate the square footage of home

class String
  def integer?
    return true if self == /^\d+$/
    true if Integer(self) rescue false
  end
end

class String
  def float?
    # The double negation turns this into an actual boolean true - if you're 
    # okay with "truthy" values (like 0.0), you can remove it.
    !!Float(self) rescue false
  end
end



puts
puts "This program calculates the square footage of home"
puts "--------------------------------------------------"
print "Enter the number of rooms in your home : "
number_of_rooms = (gets.chomp)
until (number_of_rooms.integer? == true) && (number_of_rooms >= "1")
    print "Enter the number of rooms in your home : "
    number_of_rooms = (gets.chomp)
end
number_of_rooms = Integer(number_of_rooms)

total_sqft = 0

for num in 1..number_of_rooms

    puts
    puts "Room #{num}:"
    
    print "Enter the length of the room : "
    length = (gets.chomp)
    until (length.float? == true) && (length >= "1")
        print "Enter the length of the room: "
        length = (gets.chomp)
    end
    length = Float(length)

    print "Enter the breadth of the room: "
    breadth = (gets.chomp)
    until (breadth.float? == true) && (breadth >= "1")
        print "Enter the breadth of the room: "
         breadth = (gets.chomp)
    end
    breadth = Float(breadth)
    
    sqft = (length * breadth).round(2)
    puts "Room #{num} : #{sqft} sqft."
    total_sqft += sqft
    
end

puts
print "The total square feet of home is #{total_sqft}."
puts


#_________________________________________________________________________________________

# Problem 6 : 2 D Array - Multiplication Cheat sheet

puts
puts "  Multiplication Cheat Sheet - USING 2 D ARRAY"
puts "-------------------------------------------------"
puts "  \t| 11\t| 12\t| 13\t| 14\t| 15\t|"
puts "-------------------------------------------------"
table = []
sheet = []
for tables in 11..15
    table.insert(-1, tables)
    for num in 11..15
        product = tables * num
        table.insert(-1, product)
    end
    sheet.insert(-1, table)
    table = []
end
sheet.each {|array| 
    array.each {|item| 
        print " #{item}\t|"}
        puts
        puts "-------------------------------------------------"}

puts

#_________________________________________________________________________________________

# Program 8 : What point will the two buses meet?

distance_bet_CO_and_AK_miles = 1409.0
bus_CO_to_AK_speed_mph = 40.0
bus_AK_to_CO_speed_mph = 60.0

puts
puts "Lord Muruga Bus Service"
puts "-----------------------"
puts "Distance between Colorado and Anchorage is 1409 miles"
puts "Colorado to Anchorage bus travels at 40 miles per hour."
puts "Anchorage to Colorado bus travels at 60 miles per hour."
puts
relative_speed_mph =  bus_CO_to_AK_speed_mph + bus_AK_to_CO_speed_mph
meeting_time = distance_bet_CO_and_AK_miles/relative_speed_mph
puts "The buses will meet #{meeting_time} hours after departure."
meeting_point_bus_CO_to_AK = bus_CO_to_AK_speed_mph * meeting_time
meeting_point_bus_AK_to_CO = bus_AK_to_CO_speed_mph * meeting_time
puts "They will meet at #{meeting_point_bus_CO_to_AK} miles from Colorado, and #{meeting_point_bus_AK_to_CO} miles from Anchorage."
puts
