class DeitiesController < ApplicationController
  before_action :set_deity, only: [:show, :riddle]
  include DeitiesHelper

  def riddle
    riddle_logic
  end

  def show
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
