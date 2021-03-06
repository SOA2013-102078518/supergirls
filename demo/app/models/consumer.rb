class Consumer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :provider, :uid, :name
  # attr_accessible :title, :body
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable, :omniauth_providers => [:facebook]
  
  has_many :events  

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  consumer = Consumer.where(:provider => auth.provider, :uid => auth.uid).first
  unless consumer
    consumer = Consumer.create(name:auth.extra.raw_info.name,
                         provider:auth.provider,
                         uid:auth.uid,
                         email:auth.info.email,
                         password:Devise.friendly_token[0,20]
                         )
  end
  consumer
 end
 def self.new_with_session(params, session)
    super.tap do |consumer|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        consumer.email = data["email"] if consumer.email.blank?
      end
    end
  end
end
