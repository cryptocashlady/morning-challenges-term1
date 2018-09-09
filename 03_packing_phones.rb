# 1. If youre sitting next to the same person you sat next
#    to yesterday, go sit next to someone else.

# 2. A business called “The Company” created a new phone called 
#    the companyPhone that needs packing to send away for sale. 

#    The companyPhone in its pretty new packaging 
#    (rectangular prism) measures as follows: 
#       width: 5cm
#       length: 7.4cm 
#       depth: 4cm

#    The Company need to know how many of the phones in
#    the new packaging can fit into a box that measures:
#       width: 32cm
#       length: 43cm 
#       height: 22.1cm 

#    Think about writing some pseudo code first that steps 
#    through all the commands you need to write. 
<<<<<<< HEAD

#    Keep it as simple as you can.


# [WIDTH, LENGTH, HEIGHT]
thecompanyphone = {"width" => 5, "length" => 7.4, "depth" => 4}
packagingBox = {"width" => 32, "length" => 43, "height" => 22.1}

width = (packagingBox["width"] / thecompanyphone["width"]).to_i
length = (packagingBox["length"] / thecompanyphone["length"]).to_i
height = (packagingBox["height"] / thecompanyphone["depth"]).to_i

sum = width * length * height
puts "width : #{width} "
puts "length: #{length} "
puts "height: #{height} "
puts sum
end

phone = [ 5, 7.4, 4]
box =[32, 43, 22.1]
=======
#
#    Keep it as simple as you can.

phone = [5, 7.4, 4]
box = [32, 43, 22.1]
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf

max_phones = 0
phone.permutation do |orient|
    print orient
    puts
    num_phones = (box[0] / orient[0]).to_i * (box[1] / orient[1]).to_i * (box[2] / orient[2]).to_i
<<<<<<< HEAD
    max-phones = num_phones if num_phones  > max_phones
=======
    max_phones = num_phones if num_phones > max_phones
>>>>>>> a66f15b560d5615b416b1045b016e9e610546faf
end

puts max_phones
