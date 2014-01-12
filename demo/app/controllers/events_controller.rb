

class EventsController < ApplicationController

  def index
    @events = Event.all
    @events = Event.search(params[:search])  
    #page = params[:page]
    #if  page == '1'
    #@event = Event.where("cate='1'") 
    #elsif page == '2'
    #@event = Event.where("cate='2'") 
    #elsif page == '3'
    #@event = Event.where("cate='3'") 
    #end
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
    @event = Event.includes(:consumer).find(params[:id])
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
  
  
  
  def category
    @event = Event.all
    if  params[:page] == '1'
    @event = Event.where("cate='1'") 
    elsif params[:page] == '2'
    @event = Event.where("cate='2'") 
    elsif params[:page] == '3'
    @event = Event.where("cate='3'") 
    elsif  params[:page] == '4'
    @event = Event.where("cate='4'")
    elsif  params[:page] == '5'
    @event = Event.where("cate='5'") 
    elsif params[:page] == '0'
    @event = Event.all
    end
  end
  
  def buy

  @event = Event.find(params[:id])
  @event.update_attributes(:buy_id=>current_consumer.id)
  flash[:notice] = "Thanks for buying this product"
  redirect_to :action => :index
  end
  

  end 
