# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Task.destroy_all

user = User.create!(first_name: "Terry", last_name: "Phillips", email: "no@email.com", password: "password")


garbage = user.tasks.create(title: "Garbage", description: "Take it Out", due_date: "2014-01-01 00:00:00 -0600", completed: true, user_id: 1)

dishes = user.tasks.create(title: "dishes", description: "Do them Dishes", due_date: "2014-02-01 00:00:00 -0600", completed: true, user_id: 1)

laundry = user.tasks.create(title: "Laundry", description: "The blues are still blue", due_date: "2014-03-01 00:00:00 -0600", completed: false, user_id: 1)
