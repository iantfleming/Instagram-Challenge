class SessionsController < ApplicationController

  def create
    @user = User.find_by(username: params[:username], email: params[:email])
    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path
    else
      message = 'Something went wrong! make sure your username, email and password are correct'
      redirect_to login_path, notice: message
    end
  end
end
