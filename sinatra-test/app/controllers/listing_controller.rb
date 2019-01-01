class ListingsController < ApplicationController
  get "/listings" do
    @listings = Listing.all
    erb :"listings/index"
  end
  
  get "/listings/:id" do
     @listing = Listing.find(params[:id])
     erb :"listings/show"
  end
  
  get "/cupcakess/new" do
    erb :"cupcakes/new"
  end
  
  post "/cupcakes" do
    cupcake = Cupcake.create(params[:cupcake])
    redirect '/cupcakess/#{cupcake.id}'  
  end
  
  get "/cupcakes/:id/edit" do
    @cupcake = cupcake.find(params[:id])
    erb :"cupcakes/edit"  
  end
  
  patch "/cupcakes/:id" do
    cupcake= Cupcake.find(params[:id])
    cupcake.update(params[:cupcake])
    redirect "/cupcakes/#{cupcake.id}"  
  end
  
  delete "/cupcakes/:id" do
    cupcake = Cupcake.find(params[:id])
    cupcake.destroy
    redirect "/cupcake"
  end
  
end