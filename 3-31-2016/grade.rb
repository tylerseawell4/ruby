puts "What grade did you make?"
grade = gets.chomp.to_i
if grade >= 60
	puts "You passed!"
else grade
	puts "You failed. You need to take it again!"
end