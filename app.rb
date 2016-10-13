require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end

  post '/names' do
    $player_1_name = Player.new(params[:player_1_name])
    $player_2_name = Player.new(params[:player_2_name])
    redirect to ('/play')
  end

  get '/play' do
    @p1 = $player_1_name.name
    @p2 = $player_2_name.name
    @p2points = $player_2_name.points
    erb :play
  end

  get '/attack' do
    @p1 = $player_1_name.name
    @p2 = $player_2_name.name
    $player_1_name.attack($player_2_name)
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
