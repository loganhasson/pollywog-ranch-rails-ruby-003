class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  # post '/ponds' do
  #   # Write the code to save new ponds 
  #   # and redirect to the index view listing all ponds.
  #   Pond.create(params)
  #   redirect '/ponds'
  # end

  # get '/ponds/new' do
  #   # Write the code to send to the new form view. 
  #   erb :'ponds/new'
  # end

  # get '/ponds/:id' do
  #   # Write the code to find the correct pond
  #   # by id given in the url.
  #   # Then send them to the show view.
  #   @pond = Pond.find(params[:id])
  #   erb :'ponds/show'
  # end

  # get '/ponds/:id/edit' do
  #   # Write the code to find the correct pond
  #   # by id given in the url.
  #   # Then send them to edit form view.
  #   @pond = Pond.find(params[:id])
  #   erb :'ponds/edit'
  # end

  # post '/ponds/:id/update' do
  #   # Write the code to find the correct pond
  #   # and set it's attributes and save.
  #   # Then redirect to the index view listing all ponds.
  #   Pond.find(params[:id]).update(params[:pond])
  #   redirect '/ponds'
  # end

  # get '/ponds/:id/destroy' do
  #   # Write the code to find the correct pond
  #   # and destroy it.
  #   # Then redirect to the index view listing all ponds.
  #   Pond.find(params[:id]).destroy
  #   redirect '/ponds'
  # end
end
