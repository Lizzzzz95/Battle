require 'sinatra'
require 'sinatra/base'

set :session_secret, 'super secret'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    @player_1_hitpoints = 10
    @player_2_hitpoints = 10
    erb(:play)
  end

  get '/attack' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb(:attack)
  end

  run! if app_file == $0

end
