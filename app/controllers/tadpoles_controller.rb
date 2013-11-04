class TadpolesController < ApplicationController

  def index
    @tadpoles = Tadpole.all
  end

  def create
    Tadpole.create(get_tadpole_params)
    redirect_to tadpoles_path
  end

  def new
    @tadpole = Tadpole.new
    @frog = Frog.find(params[:id])
  end

  def show
    @tadpole = Tadpole.find(params[:id])
  end

  def edit
    @tadpole = Tadpole.find(params[:id])
    @ponds = Pond.all
  end

  def update
    Tadpole.find(params[:id]).update(get_tadpole_params)
    redirect_to tadpoles_path
  end

  def destroy
    Tadpole.find(params[:id]).destroy
    redirect_to tadpoles_path
  end

  def evolve
    tadpole = Tadpole.find(params[:id])
    Frog.create(:name => tadpole.name, :color => tadpole.color, :pond => tadpole.frog.pond)
    tadpole.destroy
    redirect_to tadpoles_path
  end

  private
  def get_tadpole_params
    params.require(:tadpole).permit(:name, :color, :frog_id)
  end

end
