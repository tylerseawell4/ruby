# Create an Atm Application that includes:
# An Account class
# 3 attributes: name, balance, pin
# Create 4 additional methods: display_balance, withdraw, deposit, and pin_error.
# The user should be prompted to enter their pin anytime they call display_balance, withdraw, or deposit.
# pin_error should contain  "Access denied: incorrect PIN." and be puts when the user types the wrong pin.

class Account
	attr_writer :pin
	attr_reader :balance
	attr_accessor :name

	def initialize(pin, balance, name)
		@pin=pin
		@balance=balance
		@name=name

	end

def question
	puts "Hello #{@name}, do you want to check your balance, deposit or withdraw money?"
	answer = gets.chomp.downcase
	if answer == "check my balance" || answer =="balance"
			display_balance
			question
		elsif answer == "deposit money" || answer == "deposit"
			deposit
			question
		elsif answer == "withdraw money" || answer == "withdraw"
			withdraw
			question
		elsif answer == "done"
			puts "Have a good day, #{@name!}"
		else
			puts "Invalid input. Transaction ended!"
		end
	end

	def display_balance #(question)
		puts "Checking #{@name}'s Balance"
		puts "Enter your pin."
		input = gets.chomp.to_i
		if input != @pin
			pin_error
		else
			puts "Your balance is $#{@balance}."
	end

	end

	def withdraw
		puts "Withdrawing..."
		puts "Enter your pin."
		input = gets.chomp.to_i
		if input != @pin
			pin_error
		else
			puts "How much?"
			input=gets.chomp.to_i
			if input>@balance
				puts "Insufficient funds!!!"
			else puts "You withdrew $#{input}"
				@balance = balance - input
				puts "Do you want to check your balance (yes/no)?"
				input = gets.chomp
				if input == "yes"
					display_balance
				else
					puts "Transaction ended."
				end
			end
		end
	end

	def deposit
		puts"Depositing..."
		puts "Enter your pin."
		input = gets.chomp.to_i
		if input != @pin
			pin_error
		else
			puts "How much?"
			input=gets.chomp.to_i
			puts "You deposited $#{input}"
			@balance = balance + input
			puts "Do you want to check your balance (yes/no)?"
			input = gets.chomp
			if input == "yes"
				display_balance
			else
				puts "Transaction ended."
			end
		end
	end

	def pin_error
		puts "Access denied: incorrect PIN."
	end
end

person_info = Account.new(1234, 500, "Tyler")
person_info.question
