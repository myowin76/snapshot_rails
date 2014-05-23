class Admin::Audit < ActiveRecord::Base
  belongs_to :store, :class_name => 'Store'

  accepts_nested_attributes_for :photos, :allow_destroy => true


  validates :audit_date, :presence => true  

end
