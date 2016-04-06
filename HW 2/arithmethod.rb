def add(a,b)
	sum = a + b
	puts sum
end

def subtract(a,b)
	value=a-b
	puts value
end

puts "Give me a number..."
num1=gets.chomp.to_i

puts "And another"
num2=gets.chomp.to_i

puts "Add or subtract?"
reply = gets.chomp

if reply == "add"
	add(num1, num2)
end

if reply == "subtract"
	subtract(num1, num2)
end







