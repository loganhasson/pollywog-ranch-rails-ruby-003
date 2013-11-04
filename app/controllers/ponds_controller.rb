class PondsController < ApplicationController

  def index
    @ponds = Pond.all
  end

  def create
    Pond.create(get_pond_params)
    redirect_to ponds_path
  end

  def new
    @pond = Pond.new
  end

  def show
    @pond = Pond.find(params[:id])
  end

  def edit
    @pond = Pond.find(params[:id])
  end

  def update
    Pond.find(params[:id]).update(get_pond_params)
    redirect_to ponds_path
  end

  def destroy
    Pond.find(params[:id]).destroy
    redirect_to ponds_path
  end

  private

  def get_pond_params
    params.require(:pond).permit(:name, :water_type)
  end

end
