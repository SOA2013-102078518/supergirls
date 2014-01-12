class Event < ActiveRecord::Base
  attr_accessible :description, :discussion, :name, :price, :pic, :pic_file_name, :pic_content_type, :pic_file_size, :pic_updated_at, :cate, :consumer_id, :buy_id
  validates_presence_of :name
  has_attached_file :pic, :styles => { :medium => "300x300>", :thumb => "100x100>"}  
  belongs_to :consumer
  def self.search(search)  
    if search  
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])  
    else  
      find(:all)  
    end  
  end  
end



