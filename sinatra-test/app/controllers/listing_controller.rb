class ListingsController < ApplicationController
  get "/listings" do
    @listings = Listing.all
    erb :"listings/index"
  end
  
  get "/listings/:id" do
     @listing = Listing.find(params[:id])
     erb :"listings/show"
  end
  
  get "/listings/new" do
    erb :"listings/new"
  end
  
  post "/listings" do
    listing = Listing.create(params[:listing])
    redirect '/listings/#{listing.id}'  
  end
  
  get "/listings/:id/edit" do
    @listing = listing.find(params[:id])
    erb :"listings/edit"  
  end
  
  patch "/listings/:id" do
    listing= Listing.find(params[:id])
    listing.update(params[:listing])
    redirect "/listings/#{.id}"  
  end
  
  delete "/listings/:id" do
    listing = Listing.find(params[:id])
    listing.destroy
    redirect "/listing"
  end
  
end