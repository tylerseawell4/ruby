class Student
	attr_reader :name, :email, :password

	def initialize (name, email, password)
		@name = name
		@email = email
		@password = password
	end
	def greeting
		puts "Hello #{@name}. To login to take your test, what is your email?"
		login_email
	end
	def login_email
		email = gets.chomp.downcase
		if email == @email
			login_password
		else email != @email
			puts "Wrong email, try again!"
			login_email
		end
	end
	def login_password
		puts "Enter your password."
		password = gets.chomp
		if password == @password
			test_questions
		else password != @password
			puts "Wrong password, try again!"
			login_password
		end
	end
	def test_questions
		@answer_responses=[]
		puts "Press the 'Enter' key when you are ready to begin the test..."
		answer = gets.chomp

		puts "True or False: Water is wet?"
		answer = gets.chomp.downcase
		if answer == "true"
			puts "Correct!"
		else answer != "true"
			puts "Incorrect!"
		end
		@answer_responses<<answer

		puts "True or False: The square root of 69 is 8 something, right?"
		answer = gets.chomp.downcase
		if answer == "true"
			puts "Correct!"
		else answer != "true"
			puts "Incorrect!"
		end
		@answer_responses<<answer

		puts "True of False: 2 + 2 = 3?"
		answer = gets.chomp.downcase
		if answer == "false"
			puts "Correct!"
		else answer != "false"
			puts "Incorrect!"
		end
		@answer_responses<<answer

		puts "True of False: The Dayman is the champion of the sun?"
		answer = gets.chomp.downcase
		if answer == "true"
			puts "Correct!"
		else answer != "true"
			puts "Incorrect!"
		end
		@answer_responses<<answer
		
		score
	end
	def score
		if @answer_responses == ["true", "true", "false", "true"]
			puts "You made a 100!"
		elsif @answer_responses == ["true", "false", "false", "true"] || @answer_responses == ["false", "true", "false", "true"] || @answer_responses == ["true", "true", "true", "true"] || @answer_responses == ["true", "true", "false", "false"]
			puts "You made a 75!"
		else
			puts "You made below a 60!"
			puts "You need to take it again."
			test_questions
		end
	end	
end


student = Student.new('Tyler', "tseawell@gmail.com", "T1234")
student.greeting
