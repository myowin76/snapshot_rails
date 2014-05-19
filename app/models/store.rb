class Store < ActiveRecord::Base
  belongs_to :store_format
  belongs_to :retailer
  belongs_to :country
end
