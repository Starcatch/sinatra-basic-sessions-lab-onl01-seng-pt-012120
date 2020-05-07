require_relative 'config/environment'

class App < Sinatra::Base

   configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
   get '/' do
    erb :index
  end
  
  #displays the shopping cart contents 
  #sets the params in the session hash
  post '/checkout' do
    @sessions = session
    item = params ["item"]
    @sessions [:item] = item
  end
end