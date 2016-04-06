puts "Let's play a game...of Rock/Paper/Scissors."

def game (question) 


=begin
	i used a  method because the 'until' loop would keep using the same string (rock, paper, scissors) 
	from the array and not choose a different one. Needed it to initiate a new loop.
=end


	game_choices=["rock", "paper", "scissors"]
	comp_choice=game_choices.sample
	
	puts "You go first..."
	choice = gets.chomp.downcase

	if choice == "rock" && comp_choice == "scissors"
		puts "My choice is #{comp_choice}."
		puts "You win...rock beats scissors!"

	elsif choice == "rock" && comp_choice == "paper"
		puts "My choice is #{comp_choice}."
		puts "I win...paper beats rock!"

	elsif choice == "paper" && comp_choice == "rock"
		puts "My choice is #{comp_choice}."
		puts "You win...paper beats rock!"

	elsif choice == "paper" && comp_choice == "scissors"
		puts "My choice is #{comp_choice}."
		puts "I win...scissors beats paper!"


	elsif choice == "scissors" && comp_choice == "paper"
		puts "My choice is #{comp_choice}."
		puts "You win...scissors beats paper!"


	elsif choice == "scissors" && comp_choice == "rock"
		puts "My choice is #{comp_choice}."
		puts "I win...rock beats scissors!"

	else choice == comp_choice
		puts "My choice is #{comp_choice}."
		puts "It is a tie!"
	end

	puts question #puts the question that I am asking at the bottom over and over
	answer = gets.chomp.downcase
	while 
		if answer == "yes" #having a way to exit the program or restart the method over
		game(question) #recursion...restarting the method and to reinitiate a new loop, so a new random value from the array would be chosen for comp choice.
	end
	

	end
end

game ("Do you want to play again (yes/no)?")


