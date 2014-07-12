class Admin::EnvironmentType < ActiveRecord::Base
	has_many :stores, :class_name => 'Admin::Store'
end
