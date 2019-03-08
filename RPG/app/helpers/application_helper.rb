module ApplicationHelper
  def logged_in?
    !!@user && !@user.name.nil?
  end

  def background
    @world ? @world.url : "https://free-hd-wall-papers.com/images/gif-wallpaper/gif-wallpaper-22.gif"
  end

  def text_color
    # byebug
    @world ? @world.color : "white"
  end
end
