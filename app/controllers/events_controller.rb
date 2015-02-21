class EventsController < ApplicationController
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :place, :beginning, :end)
  end
end
