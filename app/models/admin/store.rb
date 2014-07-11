class Admin::Store < ActiveRecord::Base

  belongs_to :store_format, :class_name => 'Admin::StoreFormat'
  belongs_to :retailer, :class_name => 'Admin::Retailer'
  belongs_to :country, :class_name => 'Admin::Country'
  belongs_to :environment_type, :class_name => 'Admin::EnvironmentType'
  belongs_to :channel, :class_name => 'Admin::Channel'

  has_many :audits, :class_name => 'Admin::Audit'
  # has_many :photos, :through => :audits

  validates :name, :presence => true
  validates :name, :uniqueness => {:message => "Store exist."}
  # validates :retailer, :presence => true
  # validates :store_format, :presence => true
  # validates :environment_type, :presence => true

  geocoded_by :full_address
  after_validation :geocode, :if => :address_changed?

  def full_address
    [address, address2, address3, town, postcode, country_name(country_id)].compact.join(', ')
  end

  def self.within_25_miles_of(geo_loc)
    near(geo_loc, 25, :order => :distance)
  end

  private

  def country_name(id)
    Country.find_by_id(id).name unless id.nil?
  end

end
