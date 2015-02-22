class SessionsController < ApplicationController
  def new
  end

  def create
    session['user_uid'] = Authenticator.new(auth_hash).login
    redirect_to root_path, notice: "You have logged in successfully."
  end

  def failure
  end

  private

  def auth_hash
    request.env['omniauth.auth']
  end
end
