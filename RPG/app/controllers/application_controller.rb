class ApplicationController < ActionController::Base
  before_action :set_current_user, :set_world_and_user_body

  def set_current_user
    @user = Spirit.find_by(id: session[:user_id]) || Spirit.new(id: 100000000) #so that methods which use Sprit id don't break when no one is logged in
  end

  def set_world_and_user_body
    @world = World.find_by(id: params[:world_id])
    @user_body = @user.find_body_by_world(@world) if @world
  end

end



#<%=link_to "Go Back", world_path(@citizen.world_id)%>
