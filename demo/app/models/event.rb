class Event < ActiveRecord::Base
  attr_accessible :description, :discussion, :image, :name, :price
  validates_presence_of :name
end
