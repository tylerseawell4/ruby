# numbers=[]
# 5.times do 
# puts "Give me a number."
# num=gets.chomp.to_i
# numbers<<num

# end

# puts numbers.reduce(:+)
# puts numbers.reduce(:*)
# puts numbers.max
# puts numbers.min

cars = {"Toyota"=>"Tacoma", "Mazda"=>"3s"}

puts "What car (model) do you drive?"
reply = gets.chomp.capitalize

cars.each do |key, value|

if reply == key
	puts "Oh, you drive a #{key}, that is a #{value}, right?"
end

end





