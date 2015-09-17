# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin_user = User.create(email: "admin@example.com", name: "admin", password: "password", password_confirmation: "password", admin: true)

regular_user = User.create(email: "regular@example.com", name: "normal user", password: "password", password_confirmation: "password", admin: false)

project = Project.create(name: "Ticketee Beta")
