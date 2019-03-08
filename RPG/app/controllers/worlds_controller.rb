class WorldsController < ApplicationController
  before_action :set_world, only: [:show]

  def index
    @worlds = World.all
  end

  def show
    @inhabitants = @world.inhabitants
    @user_body = @user.find_body_by_world(@world)
    flash[:world_id] = @world.id
    flash[:spirit_id] = @user.id
    redirect_to new_world_body_path(@world) if !@user_body
  end

  private

  def set_world
    @world = World.find(params[:id])
  end

  def world_params
    params.require(:world).permit(:setting)
  end
end
