class Player
	attr_accessor :name, :choice, :wins, :losses
	def initialize
		puts "What is your name?"
		@name = gets.chomp
		@wins = 0
		@losses = 0
		play_rps
	end
	def play_rps
		puts "What do you choose (r for rock, p for paper, s for scissors)?"
		@choice = gets.chomp
		
		computer_choice = ["r", "p", "s"].sample
		case @choice
		when "r"
				case computer_choice
				when "r"
					puts "Tie!"
					self.play_rps
				when "p"
					puts "Computer wins!"
					@losses = @losses + 1
					puts "Your all time wins and losses are: #{@wins} wins and #{@losses} losses."
					self.play_rps
				when "s" 
					puts "You win!"
					@wins = @wins + 1
					puts "Your all time wins and losses are: #{@wins} wins and #{@losses} losses."
					self.play_rps
				end
		when "p"
				case computer_choice
				when "r"
					puts "You win!"
					@wins = @wins + 1
					puts "Your all time wins and losses are: #{@wins} wins and #{@losses} losses."
					self.play_rps
				when "p"
					puts "Tie!"
					self.play_rps
				when "s"
					puts "Computer wins!"
					@losses = @losses + 1
					puts "Your all time wins and losses are: #{@wins} wins and #{@losses} losses."
					self.play_rps
				end
		when "s"
				case computer_choice
				when "r"
					puts "Computer wins!"
					@losses = @losses + 1
					puts "Your all time wins and losses are: #{@wins} wins and #{@losses} losses."
					self.play_rps
				when "p"
					puts "You win!"
					@wins = @wins + 1
					puts "Your all time wins and losses are: #{@wins} wins and #{@losses} losses."
					self.play_rps
				when "s"
					puts "Tie!"
					self.play_rps
				end
		else
			puts "Sorry, you didn't choose correctly!"
			self.play_rps
		end
	end

end

Player.new