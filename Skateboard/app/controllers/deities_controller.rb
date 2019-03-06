class DeitiesController < ApplicationController
  before_action :set_deity, only: [:show, :riddle]

  def riddle
    if riddle_params.downcase == @deity.answer
      flash[:notice] = "You earned this core piece!"
      @deity.update(defeated: true)
    else
      flash[:failure] = "That is incorrect you bumbling buffoon"
    end
    redirect_to @deity
  end

  def show
    @world = @deity.world
  end

  private

  def set_deity
    @deity = Deity.find(params[:id])
  end

  def deity_params
    params.require(:deity).permit(:name, :description, :phrase, :world_id)
  end

  def riddle_params
    params.require(:answer)
  end
end
