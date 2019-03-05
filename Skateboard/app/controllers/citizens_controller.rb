class CitizensController < ApplicationController
    before_action :set_citizen, only: [:show]


    private

    def set_citizen
    @citizen = Citizen.find(params[:id])
    end

    def citizen_params
    params.require(:citizen).permit(:name, :description, :phrase)
    end 
end
