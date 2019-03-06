class DeitiesController < ApplicationController
  before_action :set_deity_world_and_user_body, only: [:show, :riddle]

  def riddle
    if riddle_params.downcase == @deity.answer #correct answer
      @core = @deity.core
      @user_body.cores << @core
      # byebug
      flash[:notice] = "You earned this core piece!"
      @deity.update(defeated: true)
    else
      flash[:failure] = "That is incorrect you bumbling buffoon"
    end
    # byebug
    redirect_to @deity
  end

  def show

  end

  private

  def set_deity_world_and_user_body
    @deity = Deity.find(params[:id])
    @world = @deity.world
    @user_body = @user.find_body_by_world(@world)
  end

  def deity_params
    params.require(:deity).permit(:name, :description, :phrase, :world_id)
  end

  def riddle_params
    params.require(:answer)
  end
end
