class SessionsController < ApplicationController

  def new
  end

  def create
    @user = Spirit.find_by(username: params[:username])
    if @user
      redirect_to worlds_path
      session[:user_id] = @user.id
    else
      flash[:error] = "Go die! You are a terrible person! Why would you do this to our beautiful website :(((((("
      redirect_to login_path
    end
  end

  def destroy
    session.clear
    redirect_to login_path
  end

  private

  def password_params
    params.require(:username, :password)
  end
end
