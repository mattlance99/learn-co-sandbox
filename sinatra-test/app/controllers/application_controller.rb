require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    
    enable :sessions 
    set :session_secret, "testsecret"
  end
  
  get '/' do 
    erb :welcome
  end
  
  post '/sessions' do
    @me = params[:email]
    erb :test
  end
end