# two arrays of 3 choices, first player array is first 3 choices [1, 2, 4] for example and 
# second player array is last 3 choices [2, 4, 8].
# need the game to end when either the player or computer gets an array of the 3 choices that returns tic-tac-toe without typing 'done'.
	# @player_grid_choices = [1, 5, 9] or computer wins first @computer_grid_choices = [2, 5, 8]



class TicTacToe
	attr_accessor :player_name, :computer_name
	def initialize (player_name, computer_name)
		@player_name = player_name
		@computer_name = computer_name
	end
	def greeting
		puts "#{@player_name}, here is what the game board will look like:"

		puts "Game board:            
	     |     |
          1  |  2  |  3
        _____|_____|_____
             |     |
          4  |  5  |  6
        _____|_____|_____
             |     |     
          7  |  8  |  9   
             |     |      " 

		puts "Just choose the number where you want to place an X or O. Just type 'done' if you get Tic-Tac-Toe!"
	end
	def question
        puts "Your go!"
		puts "Where do you choose?"
		@player_choice=gets.chomp.to_i
	end
	def game_sequence
		@player_grid_choices=[]
		@computer_grid_choices=[]
		@game_grid=[1, 2, 3, 4, 5, 6, 7, 8, 9]
		puts "I will let you go first, #{@player_name}!"
		4.times do
		question
		player
		end
		
		game_decision
		continue
	end
	def player
		@game_grid.select {|num|
		if @player_choice==num
				@player_grid_choices<<num
		end
		}
		@game_grid.delete(@player_choice)
		if @player_grid_choices.length > 3
			@player_grid_choices.shift
		end
		if @player_choice != "done".to_i
		computer		
		end
	end
	def computer
		@random_num=@game_grid.sample
		@computer_grid_choices<<@random_num
		@game_grid.delete(@random_num)
		if @computer_grid_choices.length > 3
			@computer_grid_choices.shift
		end
		puts "I, the Computer, choose spot #{@random_num}."
		
	end
	def game_decision
		if (@player_grid_choices.include?(1) == true && @player_grid_choices.include?(5) == true && @player_grid_choices.include?(9) == true) || (@player_grid_choices.include?(1) == true && @player_grid_choices.include?(4) == true &&@player_grid_choices.include?(7) == true) || (@player_grid_choices.include?(1) == true && @player_grid_choices.include?(2) == true && @player_grid_choices.include?(3) == true) || (@player_grid_choices.include?(3) == true && @player_grid_choices.include?(5) == true && @player_grid_choices.include?(7) == true) || (@player_grid_choices.include?(3) == true && @player_grid_choices.include?(6) == true && @player_grid_choices.include?(9) == true) || (@player_grid_choices.include?(2) == true && @player_grid_choices.include?(5) == true &&@player_grid_choices.include?(8) == true) || (@player_grid_choices.include?(4) == true && @player_grid_choices.include?(5) == true && @player_grid_choices.include?(6) == true) || (@player_grid_choices.include?(7) == true && @player_grid_choices.include?(8) == true && @player_grid_choices.include?(9) == true) 
			puts "You won!"
		elsif (@computer_grid_choices.include?(1) == true && @computer_grid_choices.include?(5) == true && @computer_grid_choices.include?(9) == true) || (@computer_grid_choices.include?(1) == true && @computer_grid_choices.include?(4) == true && @computer_grid_choices.include?(7) == true) || (@computer_grid_choices.include?(1) == true && @computer_grid_choices.include?(2) == true && @computer_grid_choices.include?(3) == true) || (@computer_grid_choices.include?(3) == true && @computer_grid_choices.include?(5) == true && @computer_grid_choices.include?(7) == true) || (@computer_grid_choices.include?(3) == true && @computer_grid_choices.include?(6) == true && @computer_grid_choices.include?(9) == true) || (@computer_grid_choices.include?(2) == true && @computer_grid_choices.include?(5) == true && @computer_grid_choices.include?(8) == true) || (@computer_grid_choices.include?(4) == true && @computer_grid_choices.include?(5) == true && @computer_grid_choices.include?(6) == true) || (@computer_grid_choices.include?(7) == true && @computer_grid_choices.include?(8) == true && @computer_grid_choices.include?(9) == true) 
			puts "I win!"
				
		else
			puts "We tied!"
		end
	end
	def continue
		puts "Do you want to play again (yes/no)?"
		answer = gets.chomp.downcase
		if answer == "yes"
			puts "Remeber this is the Game board:            
	     |     |
          1  |  2  |  3
        _____|_____|_____
             |     |
          4  |  5  |  6
        _____|_____|_____
             |     |     
          7  |  8  |  9   
             |     |      " 
			game_sequence
		end	
	end
end

puts "Hello, let's play a game of TicTakToe!"
puts "What is your name?"
@player_name=gets.chomp.capitalize

game=TicTacToe.new(@player_name, "Computer")
game.greeting
game.game_sequence
