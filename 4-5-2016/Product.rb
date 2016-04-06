class Product
	def initialize(type, amount)
		@type=type
		@amount=amount
	end

	def type
		@type
	end
	def amount
		@amount
	end

	def sell
		puts "How many #{type}s do you want? I have #{amount} in stock."
		answer = gets.chomp.to_i
		if answer > @amount
			puts "I don't have enough"
		else
		puts "You purchased #{answer}. I have #{@amount -= answer} left."
	end
	end


end

new_product = Product.new("Oreo", 20)

new_product.sell