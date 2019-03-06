class BodiesController < ApplicationController
    before_action :set_body, only: [:show]

    def show
      @world = @body.world
    end

    private

    def set_body
    @body = Body.find(params[:id])
    end

    def body_params
    params.require(:body).permit(:name, :description, :phrase)
    end
end
