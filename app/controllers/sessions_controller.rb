class SessionsController < ApplicationController
  protect_from_forgery with: :exception

  def new; end

  def create
    @user = User.find_by(name: params[:name].capitalize)

    if @user
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'You have successfully logged in!'
    else
      redirect_to '/login', alert: 'User does not exist!'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'You are logged out!'
  end
end
