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
  
end