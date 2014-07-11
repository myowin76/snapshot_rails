# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Roles
    Admin::Role.delete_all

    Admin::Role.create(id: 1, name: 'super_admin', created_at: Time.now)
    Admin::Role.create(id: 2, name: 'subscriber', created_at: Time.now)
    Admin::Role.create(id: 3, name: 'admin', created_at: Time.now)
    Admin::Role.create(id: 4, name: 'uploader', created_at: Time.now)

# Users
    Admin::User.delete_all

    Admin::User.create(id: 1, username: 'admin', email: 'admin@skyron.co.uk', 
    	firstname: 'admin',lastname: 'istrator', 
      password: 'password', password_confirmation: 'password', active: true,
    	created_at: Time.now)
    Admin::User.create(id: 2, username: 'aung.win', email: 'aung.win@skyron.co.uk', 
    	firstname: 'Aung', lastname: 'Win', 
    	password: 'password', password_confirmation: 'password', active: true, 
    	created_at: Time.now)

# Countries
    Admin::Country.delete_all
    Admin::Country.create(id: 1, name: 'United Kingdom', created_at: Time.now)

# Sectors
    Admin::Sector.delete_all
    Admin::Sector.create(id: 1, name: 'Automotive', created_at: Time.now)

# Retailers
    Admin::Retailer.delete_all
    Admin::Retailer.create(id: 1, name: 'Audi', created_at: Time.now)

# Brand Owners
    Admin::BrandOwner.delete_all
    Admin::BrandOwner.create(id: 1, name: 'Audi Motor', created_at: Time.now)

# Brands
    Admin::Brand.delete_all
    Admin::Brand.create(id: 1, name: 'Audi', created_at: Time.now)

# Categories
    Admin::Category.delete_all
    Admin::Category.create(id: 1, name: 'Motor', created_at: Time.now)

# Channels
    Admin::Channel.delete_all
    Admin::Channel.create(id: 1, name: 'Audi', created_at: Time.now)

# Store Formats
    Admin::StoreFormat.delete_all
    Admin::StoreFormat.create(id: 1, name: 'Very Large', created_at: Time.now)

# Environment Types
    Admin::EnvironmentType.delete_all
    Admin::EnvironmentType.create(id: 1, name: 'In Store', created_at: Time.now)

# Media Vehicles
    Admin::MediaVehicle.delete_all
    Admin::MediaVehicle.create(id: 1, name: 'Shelf sample', created_at: Time.now)

# Media Locations
    Admin::MediaLocation.delete_all
    Admin::MediaLocation.create(id: 1, name: 'Show room', created_at: Time.now)

# Media Types
    Admin::MediaType.delete_all
    Admin::MediaType.create(id: 1, name: 'Audi', created_at: Time.now)

# Projects
    # Admin::Project.delete_all
    # Admin::Project.create(id: 1, name: 'Project1', created_at: Time.now)

# Stores
    Admin::Store.delete_all
    Admin::Store.create(id: 1, name: 'Audi Store', address: '', address2: '', address3: '', 
        postcode: '', store_format_id: 1, retailer_id: 1, country_id: 1, 
        longitude: '-0.4121186', latitude: '51.4538768', 
        description: '',
        created_at: Time.now)

# Audits
    Admin::Audit.delete_all
    Admin::Audit.create(id: 1, name: 'Audi audit', store_id: 1, created_at: Time.now)

# Photos
