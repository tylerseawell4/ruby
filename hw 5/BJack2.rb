# # Build blackjack For level 1 include at least 2 players(you and the computer.) 
# You should include the hit(deal another card) or stand(don't deal another card) 
# The dealer(the computer) should make it's own decision as to when it should hit and when it should stand. 
# So you shouldn't be inputting hit or stand for it. 
# Your app should declare a winner as soon as someone reaches 21, someone exceeds 21(they lose), or if both you and the computer stand.

# Take Blackjack further!
# ​The program should ask how many people are playing and deal to everyone.
# Each player should be able to bet money.
# The program should be able to tell the player how much money they've won or lost.
# The program should ensure no cards are repeated on the table at one time. So the computer and I shouldn't have the King of Spades at the same time.

class Blackjack
	attr_accessor :player_name, :computer_name
	attr_reader :money, :players, :money_total
	def initialize (player_name, computer_name, num_players, money)
		@player_name = player_name
		@computer_name = computer_name
		@num_players = num_players
		@money = money

	end

	def greeting
		
		puts "How much money do you want to bet?"
		@money = gets.chomp.to_i
		puts "Press 'Enter' when you are ready to be delt your cards."
		to_begin = gets.chomp
		deal_cards_start
		player_choice
		if @money_total == 0
			puts "Do you are out of money, do you want to bet again?"
			answer = gets.chomp.downcase
			if answer == "yes"
			greeting
			end
		else
		puts "Do you want to keep playing?"
		answer = gets.chomp.downcase
		if answer == "yes"
			greeting
		end
	end
		
end
	def card_deck
		deck_num=[]
		deck_suit=[]
		deck_num = %w[2 3 4 5 6 7 8 9 10 A J Q K]
		deck_suit = %w[Clubs Diamonds Spades Hearts]
		@deck_card = deck_num.shuffle.pop
		@deck_card
		@hidden_value = @deck_card
				if @deck_card == "J" || @deck_card == "Q" || @deck_card == "K"
					@hidden_value = 10
				elsif @deck_card == "A"
					@hidden_value = 11
				else
					@hidden_value = @deck_card.to_i
					
				end
		@single_num_computer = @hidden_value #computer's card values
		single_suit = deck_suit.shuffle.pop #taking random card suit from the deck and putting it in this variable
		card = []
		card<<"#{@deck_card} of #{single_suit}" #storing the number and suit as a string element in the card array
		# puts "Card: #{card.join}"
		@card = card #making card array an instance variable 
	end
	def cards_value_player
		@sum = @sum + @hidden_value #calculation to add up the card values using the instance variable hidden_value
	end
	def cards_value_computer
		@sum_computer = @sum_computer + @single_num_computer #calculation to add up the computer's values using the instance variable single_num_computer
	end
	def deal_cards_start
		@sum=0 #setting an initial value of sum
		@sum_computer=0
		@player_hand=[]
		@computer_hand=[]
			#Player's cards
			@num_players.times do
			puts "#{@player_name}'s cards are: "
			2.times do
				puts card_deck #deals cards
				@player_hand<<@card #to display what cards you get
				cards_value_player
				puts "Total value = #{@sum}."

		puts "" #styling line break
			end
		end
			# Dealer's cards
			puts "#{computer_name}'s cards are: "
			2.times do
				puts card_deck
				@computer_hand<<@card #to display what cards the computer gets
				@cards_value_computer
				puts "Total value = #{cards_value_computer}."
		puts "" #styling line break
			end
		puts "" #styling line break
	end
	def player_choice
		@money_total = @money
		puts "#{@player_name}, do you want to hit or stand?"
		choice = gets.chomp.downcase
		if choice == "hit"
			puts "#{@player_name}, your new card is:"
			puts card_deck #deals new card
			@player_hand<<@card #add the new card that you were just delt to your hand
			puts "Your current hand is #{@player_hand.join(", and ")}."
			puts ""
			cards_value_player
			puts "Your total value is now #{@sum}."
			if @sum == 21
				puts "You won!"
				@money_total = @money_total + (@money)
				puts "You now have $#{@money_total}."
			elsif @sum < 21
				player_choice
			else @sum > 21
				puts "You lost!"
				@money_total = (@money_total - @money)
				puts "You lost your money. You have $#{@money_total}."
			end
		else choice == "stand"
			puts ""
			puts "Waiting on Dealer's move."
			dealer_choice
			if @sum_computer > @sum && @sum_computer > 21 #comparing total values of cards in hand to computers
				puts "stand" 
				puts "Dealer lost!"
				@money_total = @money_total + (@money)
				puts "You now have $#{@money_total}."
			elsif @sum_computer > @sum && @sum_computer <=21
				puts "hit"
				puts "Dealer won!"
				@money_total = (@money_total - @money) + @money_total
				puts "You lost your money. You have $#{@money_total}."
			elsif @sum_computer >= 22
				puts "Dealer went over! You win!"
				@money_total = @money_total + (@money)
				puts "You now have $#{@money_total}."
			elsif @sum_computer < @sum
				puts "You won!"
				@money_total = @money_total + (@money)
				puts "You now have $#{@money_total}."
			else @sum_computer == @sum && @computer_options == "stand"
				puts "Tie!"
				puts "Dealer wins!"
				@money_total = (@money_total - @money)
				puts "You lost your money. You have $#{@money_total}."
			end
		end
	end
	def dealer_choice
		@computer_options=[]
		if @sum_computer < 10
			dealer_choice_10
		elsif  @sum_computer >= 10 &&  @sum_computer <= 16
			dealer_choice_10_16
		elsif @sum_computer > 16 &&  @sum_computer < 20
		dealer_choice_17_19
		# else
		# dealer_choice_20
		end
	end

	def dealer_choice_10
			@computer_options<<"hit"
			puts com_choice = @computer_options.shuffle.sample
			puts ""
			if com_choice == "hit"
				puts "Dealer's new card is #{@card.join}."
				puts "Dealer's new value is #{cards_value_computer}."
				puts "a 10"
			end
		dealer_choice
	end
	def dealer_choice_10_16
			17.times do
				@computer_options<<"hit"
			end
			3.times do
				@computer_options<<"stand"
			end
			puts com_choice = @computer_options.shuffle.sample
			puts ""
			if com_choice == "hit"
				puts "Dealer's new card is #{@card.join}."
				puts "Dealer's new value is #{cards_value_computer}."
				puts ""
				dealer_choice
			else com_choice == "stand"
				puts "b 10-16"
			end
			
	end
	def dealer_choice_17_19 #10% chance computer will choose 'hit' and 90% chance choose 'stand'
			2.times do
				@computer_options<<"hit"
			end
			18.times do
				@computer_options<<"stand"
			end
			puts com_choice = @computer_options.shuffle.sample
			puts ""
			if com_choice == "hit"
				puts "Dealer's new card is #{@card.join}."
				puts "Dealer's new value is #{cards_value_computer}."
				puts ""
				dealer_choice
			else com_choice == "stand"
				puts "c 17-19"
			end
	end
	def dealer_choice_20
		if @sum_computer >= 20 #will never choose hit at 20 or above
			@computer_options<<"stand"
			puts "stand 20"
			puts ""
		end
	end
end
puts "Welcome to the Blackjack table!"
puts "How many players?"
@num_players=gets.chomp.to_i
puts "What is your name?"
@player_name = gets.chomp.capitalize
game = Blackjack.new(@player_name, "Dealer", @num_players, @money)

game.greeting

