class Admin::Channel < ActiveRecord::Base
	has_may :stores, :class_name => 'Admin::Store'
end
