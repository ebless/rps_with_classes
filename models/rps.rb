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
		@results =  "What do you choose (r for rock, p for paper, s for scissors)?"
		computer_choice = ["r", "p", "s"].sample
		case choice
		when "r"
				case computer_choice
				when "r"
					$results =  "Tie!"
				when "p"
					$results =  ["Computer wins!", "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."]
					user.losses = user.losses + 1
				when "s" 
					$results =  ["You win!", "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."]
					user.wins = user.wins + 1
				end
		when "p"
				case computer_choice
				when "r"
					$results =  ["You win!", "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."]
					user.wins = user.wins + 1
				when "p"
					$results =  "Tie!"
				when "s"
					$results =  ["Computer wins!", "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."]
					user.losses = user.losses + 1
				end
		when "s"
				case computer_choice
				when "r"
					$results =  ["Computer wins!", "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."]
				when "p"
					$results =  ["You win!", "Your all time wins and losses are: #{user.wins} wins and #{user.losses} losses."]
					user.wins = user.wins + 1
				when "s"
					$results =  "Tie!"
				end
		else
			@results = "Sorry, you didn't choose correctly!"
		end
	end
end
