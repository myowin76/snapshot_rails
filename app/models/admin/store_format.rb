class Admin::StoreFormat < ActiveRecord::Base
	has_many :stores, :class_name => 'Store'
end
