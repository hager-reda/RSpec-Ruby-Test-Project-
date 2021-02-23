require_relative('lib/car')

puts
puts "Enter info for the car u want"
puts

print "Make: "
make = gets.chomp

print "Year: "
year = gets.chomp

print "Color: "
color = gets.chomp

car = Car.new(:make => make, :year => year, :color =>color)

puts
puts "I understand that u want to purchase:
#{car.full_name}."
puts