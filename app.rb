require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_1_name])
    player2 = Player.new(params[:player_2_name])
    $game = Game.new(player1, player2)
    redirect to ('/play')
  end

  get '/play' do
    @p1 = $game.players[0]
    @p2 = $game.players[1]
    @p2points = $game.players[1].points
    erb :play
  end

  get '/attack' do
    @p1 = $game.players[0]
    @p2 = $game.players[1]
    @p2points = $game.players[1].points
    $game.attack(@p2)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
