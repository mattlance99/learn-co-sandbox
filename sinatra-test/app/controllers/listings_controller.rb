require 'pry'

class ListingsController < ApplicationController

  get '/crazytest' do
    erb  :'listings/test'
  end
  
end