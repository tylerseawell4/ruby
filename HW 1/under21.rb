puts "What is your age?"
age = gets.chomp.to_i

if age < 21
	of_age = 21 - age
	puts "You have #{of_age} year(s) left before you can enter."
else
	puts "You are old enough to enter."
end