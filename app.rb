require_relative 'config/environment'

class App < Sinatra::Base

  configure  do
    enable :sessions
    set :session_secret, "forthepurposeofthis000lab"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = params
    @item = @session[:item]
    erb :checkout
  end

end
