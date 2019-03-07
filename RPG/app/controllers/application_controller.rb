class ApplicationController < ActionController::Base
  before_action :set_current_user

  def set_current_user
    @user = Spirit.find_by(id: session[:user_id])
  end

  def set_world_and_user_body
    @world = World.find_by(id: params[:world_id])
    @user_body = @user.find_body_by_world(@world)
  end

end
