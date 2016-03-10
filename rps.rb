class Player
	attr_accessor :name, :choice, :wins, :losses
	def initialize
		puts "What is your name?"
		@name = gets.chomp
		@wins = 0
		@losses = 0
	end
	

end
class Game
	attr_accessor :user
	def initialize(user)
		@user = user
		play_rps(user)
	end
	def play_rps(user)
		puts "What do you choose (r for rock, p for paper, s for scissors)?"
		@choice = gets.chomp
		
		computer_choice = ["r", "p", "s"].sample
		case @choice
		when "r"
				case computer_choice
				when "r"
					puts "Tie!"
					self.play_rps(user)
				when "p"
					puts "Computer wins!"
					user.losses = user.losses + 1
					puts "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."
					self.play_rps(user)
				when "s" 
					puts "You win!"
					user.wins = user.wins + 1
					puts "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."
					self.play_rps(user)
				end
		when "p"
				case computer_choice
				when "r"
					puts "You win!"
					user.wins = user.wins + 1
					puts "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."
					self.play_rps(user)
				when "p"
					puts "Tie!"
					self.play_rps(user)
				when "s"
					puts "Computer wins!"
					user.losses = user.losses + 1
					puts "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."
					self.play_rps(user)
				end
		when "s"
				case computer_choice
				when "r"
					puts "Computer wins!"
					user.losses = user.losses + 1
					puts "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."
					self.play_rps(user)
				when "p"
					puts "You win!"
					user.wins = user.wins + 1
					puts "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."
					self.play_rps(user)
				when "s"
					puts "Tie!"
					self.play_rps(user)
				end
		else
			puts "Sorry, you didn't choose correctly!"
			self.play_rps(user)
		end
	end
end

player = Player.new
game = Game.new(player)
game.play_rps(player)