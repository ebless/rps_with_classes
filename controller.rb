require 'sinatra'
require 'sinatra/cookies'


enable :sessions
require_relative 'models/rps.rb'


get '/' do
	session[:wins] ||= 0
	session[:losses] ||= 0
	erb :index
end

post '/' do

	player = Player.new(params[:name])
	game = Game.new(player, params[:choice])

	
	if player.wins != 0
		session[:wins] += player.wins
	end
	if player.losses != 0
		session[:losses] += player.losses
	end

	erb :results
end

get '/play_again' do
	session[:wins] = nil
	session[:losses] = nil

	redirect '/'
end