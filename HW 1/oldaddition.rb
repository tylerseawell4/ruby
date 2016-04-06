puts "Hey User, I am going to add as many numbers as you want. Type 'done' when you are finished giving me numbers to add"

def addition(question)
	puts question
	num=gets.chomp.to_i
	sum = 0

	if num == "done".to_i

	else
		sum = sum + num
		addition(question)
	end
puts sum
end

addition("What is your number?")

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


