# ##################################
# Use the # sign to comment in Ruby
# ##################################

# variable declaration
x = 5;
y = "Hello";
z = ["Mather", "Quincy", "Currier", "Adams"];

# Printing using echo and print.
# puts x
# puts y
# puts z

# print x
# print y
# print z

# # array slicing
# puts z[2,1]
# puts ""
# puts z[-1]
# puts ""
# puts z[1..3]
# puts ""
# puts z[1...3]

# # manipulating arrays
# puts z.pop
# z.push("HBS")
# z.unshift("iLabs")
# print z



# # Using variables when printing a string.
# name = "Robert"
# library = "nokogiri"
# language = "ruby"

# puts "Hello, my name is #{name}";
# puts "I will be teaching you " + library + " in #{language}";

# # if-else statements
# if x < 3
#     puts "small"
# elsif x < 7
#     puts "medium"
# else
#     puts "large"
# end

# # for loop
# for i in 0..5
#     puts i;
# end

# # while loop
# j = 0;

# while j < 5
#     puts j
#     j += 1
# end

# # array each method
# arr0 = [2,3,4]
# arr1 = arr0.each do |variable|
#     puts variable * 2
# end
# print arr1

# # array each with index method
# arr2 = ["one","two","three"]
# arr2.each_with_index do |str, idx|
#     puts str
#     puts idx
# end

# # array map method
# arr4 = [1,2,3,4,5]
# arr5 = arr4.map do |num|
#     num * num
# end
# print arr5

# # factorial function recursive
# def factorial(number)
#     if number <= 1
#         return 1
#     end
#     return number * factorial(number - 1)
# end

# puts "5! = " + factorial(5).to_s

# hash declaration
student = { 
    "name" => "David",
    "age" => 26
}

# add entry to hash
student["languages"] = ["Ruby","Python","C","JavaScript"]

puts student
puts ""
puts student["languages"]