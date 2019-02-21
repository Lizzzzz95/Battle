require 'sinatra'
require 'sinatra/base'

set :session_secret, 'super secret'

class Battle < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/hi' do
    'hello'
  end

  run! if app_file == $0

end
