class Hangman
	attr_accessor :player, :guesses

	def initialize (player, guesses)
		@player = player
		@guesses = guesses

	end

	def greeting
		@total_array=[]
		puts "Let's play a game of Hangman!"
		puts "Player, what is your name?"
		@player = gets.chomp.capitalize
		puts "Hello, #{@player}! Let's get started."
		puts "I will have a word that you have to guess correctly one letter at a time until you get it correct or run out of lives."
		difficulty
		puts "You have chosen #{@difficulty_choice} and have #{@guesses} lives!"
		game_dictionary
		puts "The word is #{@game_choice_array.length} characters long. Good luck, #{@player}!"
		guessing_game
	end

	def difficulty
		puts "What difficulty do you want to play on? Easy mode: 8 lives. Normal mode: 5 lives. Hard mode: 3 lives."
		@difficulty_choice = gets.chomp.capitalize
		if @difficulty_choice == "Easy mode"
			@guesses = 8
		elsif @difficulty_choice == "Normal mode"
			@guesses = 5
		elsif @difficulty_choice == "Hard mode"
			@guesses = 3
		else
			puts "You didn't select a difficulty. Remember to type 'Easy mode', 'Normal mode', or 'Hard mode'!"
			difficulty
		end
	end

	def game_dictionary
		@dictionary = %w[apple television lamp hat couch sunglasses table phone fridge shoes]
		@computer_choice = @dictionary.sample
		@game_choice_array = @computer_choice.split(//)
	end

	def guessing_game
		total_guess_array=[]
		correct_guess_array=[]
		until @guesses == 0 || @game_choice_array == []
		puts "What is your guess?"
		@letter_guess = gets.chomp.downcase
		total_guess_array<<@letter_guess
		if @game_choice_array.include?(@letter_guess) == true
			puts "Correct!"
			show_hangman
			correct_guess_array<<@game_choice_array.delete(@letter_guess)
			
		else
			puts "Incorrect!"
			@guesses -= 1
		end
		puts "Lives left: #{@guesses}"
		puts "All guesses so far: #{total_guess_array.join(", ")}"
		puts "Your correct guesses so far: #{correct_guess_array.join(", ")}"
	end
		if @guesses == 0
			puts "You lost! You didn't guess the word correctly. It was #{@computer_choice}!"
		else
			puts "You won. You guessed the word correctly. It was #{@computer_choice}!"
		end
	end
	
	def show_hangman
	@player_choice_array = []

	@player_choice_array<<@letter_guess

	@show_array = @computer_choice.chars.map {|x| x != @player_choice_array.join ? " __ " : x}
	@total_array<<@show_array

	p @show_array.join
end
end

game = Hangman.new(@player, @guesses)

game.greeting






