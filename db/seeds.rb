# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Roles
    Admin::Role.delete_all

    Admin::Role.create(id: 1, name: 'Administrator', created_at: Time.now)
    Admin::Role.create(id: 2, name: 'Subscriber', created_at: Time.now)
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