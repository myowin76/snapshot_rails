class Admin::Sector < ActiveRecord::Base

	has_many :retailers, :class_name => 'Admin::Retailer'
end
