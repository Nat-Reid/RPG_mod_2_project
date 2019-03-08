class ApplicationController < ActionController::Base
  before_action :set_current_user, :set_world_and_user_body, :raccoon, :set_cache_headers

  def set_current_user
    @user = Spirit.find_by(id: session[:user_id]) || Spirit.new(id: 100000000) #so that methods which use Sprit id don't break when no one is logged in
  end

  def set_world_and_user_body
    @world = World.find_by(id: params[:world_id])
    @user_body = @user.find_body_by_world(@world) if @world
  end

  def raccoon
    @raccoon_world = World.find_by(name: "Raccoon World")
  end

  private

  def set_cache_headers
    response.headers["Cache-Control"] = "no-cache, no-store"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "Fri, 01 Jan 1990 00:00:00 GMT"
  end

end



#<%=link_to "Go Back", world_path(@citizen.world_id)%>
