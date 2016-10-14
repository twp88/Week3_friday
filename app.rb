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
    @@game = Game.new(player1, player2)
    redirect to ('/play')
  end

  get '/play' do
    @p1 = @@game.players[0]
    @p2 = @@game.players[1]
    erb :play
  end

  get '/attack' do
    @p1 = @@game.players[0]
    @p2 = @@game.players[1]
    @@game.attack(@p2)
    @@game.players[1].points = @p2.points
    @@game.switch_player
    redirect to ('/lose') if @p2.points == 0
    erb :attack
  end

  get '/lose' do
    erb :lose
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
