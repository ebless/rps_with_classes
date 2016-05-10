class Player
	attr_accessor :name, :choice, :wins, :losses
	def initialize(name)
		@name = name
		@wins = 0
		@losses = 0
	end
end

class Game
	attr_accessor :user, :choice
	def initialize(user, choice)
		@user = user
		@choice = choice
		play_rps(user, choice)
	end
	def play_rps(user, choice)
		computer_choice = ["r", "p", "s"].sample
		case choice
		when "r"
				case computer_choice
				when "r"
					$results = "Tie!"
				when "p"
					user.losses = user.losses + 1
					$results = "You lose!"
				when "s" 
					user.wins = user.wins + 1
					$results = "You win!"
				end
		when "p"
				case computer_choice
				when "r"
					user.wins = user.wins + 1
					$results = "You win!"
				when "p"
					$results = "Tie!"
				when "s"
					user.losses = user.losses + 1
					$results = "You lose!"
				end
		when "s"
				case computer_choice
				when "r"
					user.losses = user.losses + 1
					$results = "You lose!"
				when "p"
					user.wins = user.wins + 1
					$results = "You win!"
				when "s"
					$results = "Tie!"
				end
		else
			$results = "Sorry, you didn't choose correctly!"
		end
	end
end
