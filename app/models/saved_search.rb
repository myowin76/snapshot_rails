class SavedSearch < ActiveRecord::Base
	belongs_to :user, :class_name => "Admin::User"
	serialize :value, JSON

	
end
