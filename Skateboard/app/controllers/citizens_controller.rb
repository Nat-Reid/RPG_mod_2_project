class CitizensController < ApplicationController
    before_action :set_citizen, only: [:show]

    def show
      @world = @citizen.world
      @user_body = @user.find_body_by_world(@world)
    end

    private

    def set_citizen
    @citizen = Citizen.find(params[:id])
    end

    def citizen_params
    params.require(:citizen).permit(:name, :description, :phrase)
    end
end
