class UsermanagementController < ApplicationController
  
   def userprofile
   @event = Event.includes(:consumer).where( :consumer_id => current_consumer.id)

   @buy = Event.includes(:consumer).where( :buy_id => current_consumer.id)
   end
end
