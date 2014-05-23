class Admin::EnvironmentType < ActiveRecord::Base
	has_may :stores, :class_name => 'Admin::Store'
end
