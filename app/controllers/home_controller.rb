class HomeController < ApplicationController
  def index
    @events = Event.page(params[:page])
  end
end
