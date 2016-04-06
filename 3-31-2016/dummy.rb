puts "What is your name?"
name = gets.chomp.capitalize
puts "Hey, how are you doing #{name}?"
response = gets.chomp

until
	response == "I'm a dummy"
	puts "#{response.capitalize}...I am going to copy you, #{name}. Don't tell me to stop."
	response = gets.chomp
	
	while response == "stop" || response == "STOP" || response == "Stop"
		puts "#{response.capitalize} (HAHA still copying you). I'll never stop #{name}, unless you admit that you are a dummy. Type 'I'm a dummy' to stop me...dummy."
		response=gets.chomp
	end
	while
		if response == "i'm a dummy"
			puts "Ugh #{name}. You forgot to capitalize...dummy. Try again."	
			response = gets.chomp
		elsif response == "Im a dummy"
			puts "Sigh #{name}. You forgot to add an apostrophe...dummy. Try again."
			response = gets.chomp
		elsif response == "im a dummy"
			puts "WOW #{name}, you forgot the apostrophe and to capitalize...you are the biggest dummy! Try again."
			response = gets.chomp
		elsif response == "I'm a dummy." || response == "im a dummy." || response == "Im a dummy."
			puts "While a period (.) is good grammar #{name}, I did not request it...dummy."
			response = gets.chomp
		end
	end
end

puts "You FINALLY stopped me #{name}...you big ole dummy!"