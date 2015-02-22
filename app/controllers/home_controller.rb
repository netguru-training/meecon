class HomeController < ApplicationController
  def index
    @events = Event.page(params[:page])
    respond_to do |format|
      format.html
      format.js
    end
  end
end
