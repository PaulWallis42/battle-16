require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack
    @game.switch_turns
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
