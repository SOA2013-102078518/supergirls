class UsermanagementController < ApplicationController
   def userprofile
   @usermanagementcontroller = UsermanagementController.includes(:consumer).find(params[:id])
   
   end
end
