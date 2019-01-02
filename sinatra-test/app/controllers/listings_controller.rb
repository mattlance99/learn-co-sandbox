require 'pry'

class ListingsController < ApplicationController

  get "/listings/new" do
    erb :"listings/new"
  end
  
  post "/listings" do
    @listing = Listing.create(params[:listing])
    #redirect '/listings/#{listing.id}'  
    "Hello!!!"
  end
  
  get '/listings' do
    @listings = Listing.all
    erb :'listings/index'
  end
  
  get '/listings/:id' do
    @listing = Listing.find_by_id(params[:id])
    erb :'listings/show'
  end
  
  get '/listings/:id/edit' do  
    @listing = Listing.find_by_id(params[:id])
    erb :'listings/edit'
  end
 
  patch '/listings/:id' do
    @listing = Listing.find_by_id(params[:id])
    @listing.title = params[:title]
    @listing.content = params[:content]
    @listing.save
    redirect to "/articles/#{@article.id}"
  end
  
  delete '/listings/:id/delete' do 
    @listing = Lisitng.find_by_id(params[:id])
    @listing.delete
    redirect to '/lisitngs'
  end
  
end