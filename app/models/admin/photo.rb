class Admin::Photo < ActiveRecord::Base
  belongs_to :audit
end
