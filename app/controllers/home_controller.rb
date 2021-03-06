class HomeController < ApplicationController
  def index
    @events = Event.coming.not_ended.page(params[:page]).decorate
    respond_to do |format|
      format.html
      format.js
    end
  end
end
