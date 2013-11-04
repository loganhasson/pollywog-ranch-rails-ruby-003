class FrogsController < ApplicationController

  def index
    @frogs = Frog.all
  end

  def create
    Frog.create(get_frog_params)
    redirect_to frogs_path
  end

  def new
    @frog = Frog.new
    @ponds = Pond.all
  end

  def show
    @frog = Frog.find(params[:id])
  end

  def edit
    @frog = Frog.find(params[:id])
    @ponds = Pond.all
  end

  def update
    Frog.find(params[:id]).update(get_frog_params)
    redirect_to frogs_path
  end

  def destroy
    Frog.find(params[:id]).destroy
    redirect_to frogs_path
  end

  private

  def get_frog_params
    params.require(:frog).permit(:name, :color, :pond_id)
  end

  # get '/frogs/:id/tadpoles/new' do
  #   # Write the code to find the correct frog
  #   # and redirect to new tadpole form view
  #   @frog = Frog.find(params[:id])
  #   erb :'tadpoles/new'
  # end
end
