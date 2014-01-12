class UsermanagementController < ApplicationController
   def userprofile
   @event = Event.includes(:consumer).where( :consumer_id => current_consumer.id)
   end
end
