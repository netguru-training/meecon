class EventsController < ApplicationController
  before_action :logged_in_user, only: [:create, :new, :index]

  def index
    @user_events = current_user.events.page(params[:page]).per(10).decorate
  end

  def show
    @event = Event.find(params[:id]).decorate
  end

  def new
    @event = Event.new
    @categories = Category.all.map{|c| [ c.name, c.id ]}
  end

  def create
    @event = current_user.events.build(event_params)
    if @event.save
      flash[:success] = "Event added successfully."
      redirect_to root_path
    else
      @categories = Category.all.map{|c| [ c.name, c.id ]}
      render 'new'
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :place, :beginning_at, :end_at, :picture, :category_id, :description)
  end

end
