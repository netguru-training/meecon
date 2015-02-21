class SessionsController < ApplicationController
  def new
  end
  def create
    auth_hash = request.env['omniauth.auth']
    # render :json => auth_hash
    @user = User.create!(
      name: auth_hash['info']['name'], email: auth_hash['info']['email'], 
      image: auth_hash['info']['image'], uid: auth_hash['uid'], 
      facebook_oauth: auth_hash
    )
    render :json => @user
  end
  def failure
  end
end
