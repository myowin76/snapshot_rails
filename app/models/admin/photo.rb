class Admin::Photo < ActiveRecord::Base

 #  acts_as_paranoid
	# before_destroy :save_who_deleted

 #  def save_who_deleted
 #    # do stuff
 #  end

  belongs_to :audit, :class_name => 'Admin::Audit'

	has_attached_file :image, 
		:styles => { :large => "640x480", :medium => "300x300>", :small => "100x100>" },
		:default_url => "/images/:style/missing.png",
		:storage => :filesystem
  
  validates_attachment_presence :image
  validates_attachment_content_type :image, 
  	:content_type => ['image/jpeg', 'image/pjpeg', 
  								   'image/jpg', 'image/png']
end
