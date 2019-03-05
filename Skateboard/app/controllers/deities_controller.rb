class DeitiesController < ApplicationController
  before_action :set_deity, only: [:show]

  def riddle
    @deity = Deity.find(params[:deity_id])
    if riddle_params.downcase == "footsteps"
      flash[:notice] = "You earned this core piece!"
      @deity.defeated = true
      @deity.save
    else
      flash[:failure] = "That is incorrect you bumbling buffoon"
    end
    redirect_to @deity
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
