require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
      erb(:index)
  end

  # get '/' do
  #   erb(:index)
  # end

  post '/names' do
    @Player_1 = params[:Player_1]
    erb(:play)
  end

  run! if app_file == $0
end
