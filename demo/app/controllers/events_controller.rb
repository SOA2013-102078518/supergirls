class EventsController < ApplicationController


  def index
    @events = Event.all
    
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(params[:event])
    @event.save
    redirect_to :action => :index
  end
  def show
    @event = Event.find(params[:id])
    @page_title = @event.name
    
  end
  def edit
    @event = Event.find(params[:id])
  end
  def update
    @event = Event.find(params[:id])
    @event.update_attributes(params[:event])

    redirect_to :action => :show, :id => @event
  end
  def giveup
  redirect_to :action => :index
  end
  def destroy
  @event = Event.find(params[:id])
  @event.destroy
  redirect_to :action => :index
  end
  
  def search
  @events = event.paginate :page => params[:page],  :conditions => ['txt like ?', "%#{params[:search]}%"]
  end
  #def hi
  
  #end
  

  before_filter :authenticate_consumer!

end
