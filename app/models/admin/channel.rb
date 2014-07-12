class Admin::Channel < ActiveRecord::Base
	has_many :stores, :class_name => 'Admin::Store'
end
