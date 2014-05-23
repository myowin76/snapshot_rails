class Admin::Retailer < ActiveRecord::Base
  belongs_to :sector, :class_name => 'Admin::Sector'
  has_many :stores, :class_name => 'Store'
end
