class DeitiesController < ApplicationController
  before_action :set_deity, only: [:show]

  private

  def set_deity
    @deity = World.find(params[:id])
  end

  def deity_params
    params.requite(:deity).permit(:name, :description, :phrase, :world_id)
  end
end
