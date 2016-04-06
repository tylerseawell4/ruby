puts "Give me a number. I'm going to divide it by another for you."
num1 = gets.chomp.to_i

while num1 == 0 
	puts "Not an integer or 0. Try again."
	num1 = gets.chomp.to_i
end

puts "And one more."
num2 = gets.chomp.to_i

while num2 == 0
	puts "Not an integer or 0. Try again."
	num2 = gets.chomp.to_i
end

puts "Your answer is #{num1/num2}."
puts "With a remainder of #{num1.to_f%num2.to_f}."



# Teacher Solution

# puts "Give me a number other than 0"
# num = gets.chomp.to_i
# puts "Give me a 2nd number other than 0"
# num2 = gets.chomp.to_i

# if num == 0 || num2 ==0
# 	puts 'Sorry this is invalid.'
# else
# 	puts num/num2
# 	puts num%num2
# end