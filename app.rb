require 'sinatra/base'
require_relative 'lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new params[:player_1]
    $player_2 = Player.new params[:player_2]
    redirect to '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    @message = session[:message]
    erb :play
  end

  post '/attack' do
    session[:message] = 'Attack succesful'
    $player_2.reduce_health 10
    redirect to '/play'
  end
end
