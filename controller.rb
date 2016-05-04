require 'sinatra'
require_relative 'models/rps.rb'

get '/' do
	erb :index
end

post '/' do
	player = Player.new(params[:name])
	game = Game.new(player, params[:choice])
	erb :results
end