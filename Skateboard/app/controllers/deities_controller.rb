class DeitiesController < ApplicationController
  before_action :set_deity, only: [:show]

  def riddle
    # byebug
    if :answer.downcase == "footsteps"
      flash[:notice] = "You earned this core piece!"
    else
      flash[:notice] = "That is incorrect you bumbling buffoon"
    end
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
