class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?

  def logged_in?
    current_user.present?
  end

  def current_user
    @current_user ||= User.find_by(uid: session[:user_uid])
  end

  private

  # Confirms a logged-in user.
  def logged_in_user
    unless logged_in?
      flash[:alert] = "Please log in."
      redirect_to root_url
    end
  end
end
