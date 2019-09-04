require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
     erb :index
    #'Testing infrastructure working!'
  end

  post '/names' do
    player_1_name = Player.new(params[:player_1_name])
    player_2_name = Player.new(params[:player_2_name])
    $game = Game.new(player_1_name, player_2_name)
    redirect '/play'
  end

  get '/play' do
    # @player_1_name = $player_1_name.name
    # @player_2_name = $player_2_name.name
    redirect '/loser' if $game.loser?
    erb :play
  end

  get '/attack' do
    #@player_1_name = $player_1_name.name
    # @player_2_name = $player_2_name.name
    $game.attack($game.opponent)
    $game.switch_turn
    erb :confirm_attack
  end

  get '/loser' do
    erb :lose
  end

  # start the server if ruby file executed directly
  #run! if app_file == $0
  run! if __FILE__ == $PROGRAM_NAME
end
