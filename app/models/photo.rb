class Photo < ActiveRecord::Base
  belongs_to :audit, :class_name => 'Admin::Audit'
  
end
