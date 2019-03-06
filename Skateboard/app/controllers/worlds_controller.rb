class WorldsController < ApplicationController
  before_action :set_world, only: [:show]

  def index
    @worlds = World.all
  end

  def show
    @inhabitants = @world.inhabitants
  end

  private

  def set_world
    @world = World.find(params[:id])
  end

  def world_params
    params.require(:world).permit(:setting)
  end
end
