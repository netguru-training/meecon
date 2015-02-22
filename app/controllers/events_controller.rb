class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new]

  def new
    @event = Event.new
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "Event added successfully."
      redirect_to root_url
    else
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :place, :beginning_at, :end_at, :picture)
  end
end
