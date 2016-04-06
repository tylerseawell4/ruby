teachers = ["Walid", "Robert"]
students = ["Tyler", "Lucas", "Cash", "Brian"]

puts "What is your name?"
name = gets.chomp.capitalize

students.each do |x| 
	if name == x
	puts "#{name}, you are a student."
end
end

teachers.each do |y|
	if name == y
	puts "#{name}, you are a teacher."
end
end