class Admin::Brand < ActiveRecord::Base
  belongs_to :brand_owner
end
