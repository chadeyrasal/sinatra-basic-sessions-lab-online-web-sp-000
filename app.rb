require_relative 'config/environment'

class App < Sinatra::Base

  configure  do
    enable :sessions
    set :session_secret, "forthepurposeofthis000lab"
  end

  get '/' do

  end
  
end
