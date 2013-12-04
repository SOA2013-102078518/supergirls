class Consumers::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    # You need to implement the method below in your model (e.g. app/models/consumer.rb)
    @consumer = Consumer.find_for_facebook_oauth(request.env["omniauth.auth"], current_consumer)
 
    if @consumer.persisted?
      sign_in_and_redirect @consumer, :event => :authentication #this will throw if @consumer is not activated
      set_flash_message(:notice, :success, :kind => "Facebook") if is_navigational_format?
    else
      session["devise.facebook_data"] = request.env["omniauth.auth"]
      redirect_to new_consumer_registration_url
    end
  end
end
