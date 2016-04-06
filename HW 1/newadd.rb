puts "I am going to add numbers for you. What is your first number? (Type 'done' when you have finished giving me numbers to add)."
num=gets.chomp.to_i
sum = 0


while num != "done".to_i
	sum += num
	puts "And another? (Type 'done' when finished)"
	num = gets.chomp.to_i

	 #if num != Integer ? "This is not an integer" : " "
		#um = gets.chomp 
end

puts sum

# solution

# input = ''
# sum=0
# until input == "done"
# 	puts 'What is a number?'
# 	input = gets.chomp.downcase
# 	sum += input.to_i
# end

# puts "Your sum is #{sum}"

#  when turning string into number...makes it a 0.