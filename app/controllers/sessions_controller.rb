class SessionsController < ApplicationController
  def new
  end

  def create
    current_user = Authenticator.new(auth_hash).login
    session[:user_uid] = current_user.uid
    redirect_to root_path, notice: "Hello #{current_user.name}, you have logged in successfully."
  end

  def failure
  end

  def logout
    name = current_user.name
    session.delete(:user_uid)
    redirect_to root_path, notice: "Bye #{name}, we hope to see you soon."
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
