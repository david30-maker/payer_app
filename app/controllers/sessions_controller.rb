class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:email])
    if user && BCrypt::Password.new(user.password_digest) == params[:password]
      session[:user_id] = user.id
      redirect_to players_path, notice: 'Logged in!'
    else
      flash[:errors] = ["Email or password is invalid"]
      redirect_to users_path
    end
  end

  def destroy
   reset_session
    redirect_to users_path, notice: 'Logged out!'
  end
end
