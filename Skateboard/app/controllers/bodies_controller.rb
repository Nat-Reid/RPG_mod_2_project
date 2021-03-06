class BodiesController < ApplicationController
    before_action :set_body, only: [:show]

    def show
      @world = @body.world
      @user_body = @user&.find_body_by_world(@world)
    end

    def new
      @body = Body.new
    end

    def create
      @body = Body.new(body_params)
      if @body.save
        flash[:message] = "Welcome to #{@body.world.setting}"
        redirect_to @body.world
      else
        flash[:errors] = @body.errors.full_messages
        flash[:world_id] = @body.world_id
        flash[:spirit_id] = @body.spirit_id
        redirect_to new_body_path
      end
    end

    def inventory
      @body = Body.find(params[:body_id])
      @world = @body.world
    end

    private

    def set_body
    @body = Body.find(params[:id])
    end

    def body_params
    params.require(:body).permit(:name, :description, :phrase, :spirit_id, :world_id)
    end
end
