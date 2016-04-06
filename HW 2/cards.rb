# cards = []
# 10.times do |x|
# 	x+=1
# 	cards<<x
# end

# def give(deck)
# 	puts "Your two cards are..."
# 	2.times do
# 	used_cards = deck.sample
# 	deck.delete(used_cards)
# 	puts used_cards
# 	end

# if deck != []
# 	puts "Cards left in the deck: #{deck}"
# else
# 	puts "Out of cards"
# 	end
# end

# puts "How many players are playing?"
# answer = gets.chomp.to_i

# answer.times do
# 	give(cards)
# end

deck_num = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K']
deck_suits = ['Hearts', 'Spades', 'Diamonds', 'Clubs']
players = []
input = ''
puts 'Please enter the first name of all players.'
until input == 'Done'
  input = gets.chomp.capitalize
  players<<input
end
#players.pop
players.each do |name|
  puts "#{name}'s cards are #{deck_num.shuffle[0]} of #{deck_suits.shuffle[0]} and #{deck_num.shuffle[0]} of #{deck_suits.shuffle[0]}"
end



