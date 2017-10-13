require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions

  get '/' do
      erb(:index)
  end


  post '/names' do
    $Player_1 = Player.new(params[:Player_1], 60)
    $Player_2 = Player.new(params[:Player_2], 60)
    redirect '/play'
  end

  get '/play' do
    @Player_1 = $Player_1
    @Player_2 = $Player_2
    erb(:play)
  end

  get '/attack' do
    @Player_1 = $Player_1
    @Player_2 = $Player_2
    Game.new.attack(@Player_2)
    erb(:attack)
  end

  run! if app_file == $0
end
