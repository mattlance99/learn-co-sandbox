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
 
  patch '/articles/:id' do #edit action
  @article = Article.find_by_id(params[:id])
  @article.title = params[:title]
  @article.content = params[:content]
  @article.save
  redirect to "/articles/#{@article.id}"
end
  
end