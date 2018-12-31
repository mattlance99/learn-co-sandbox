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
  
  get '/signup' do
    erb :signup
  end 
  
  get "/login" do
		erb :login
	end
	
	get "/logout" do
		session.clear
		redirect "/"
	end
	
	get '/listings/new' do
    erb :new_listing
  end
  
  get '/listings' do
    @listings = Listing.all
    erb :index
  end
	
	post "/login" do
		agent = Agent.find_by(:username => params[:username])
		if agent && agent.authenticate(params[:password])
			session[:agent_id] = agent.id
			redirect '/listings'
		else
		  "YOU FAILED!!!!!"
			#redirect "failure"
		end
	end
  
	post "/signup" do
		agent = Agent.new(:username => params[:username], :password => params[:password])
		if agent.save
		      erb :login
			#redirect "/login"
		else
		      erb :failure
			#redirect "/failure"
		end
	end
end