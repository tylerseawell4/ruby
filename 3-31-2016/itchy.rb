puts "Hey Dad, can we go to I&S land?"
answer=gets.chomp.downcase
until answer == "yes"
	puts "Hey Dad, can we go to I&S land?"
	answer=gets.chomp.downcase
	if answer == "yes"
		puts "sweet"
	end
end