# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Donation.destroy_all
VolunteerSignup.destroy_all
Project.destroy_all
User.destroy_all
Admin.destroy_all



u1 = User.create(first_name: "Devante", last_name: "Lowery", age: 26, address: "123 Berry Lane", gender: "M")
u2 = User.create(first_name: "Adri", last_name: "Torres", age: 30, address: "456 Bluffstone Rock", gender: "F")
u3 = User.create(first_name: "Raul", last_name: "Sanchez", age: 28, address: "567 Rain Lane", gender: "M")

p1 = Project.create(name: "Youth", date: "2019-04-02", bio: "Be part of our project")
p2 = Project.create(name: "Homeless", date: "2019-04-04", bio: "Help the homeless")
p3 = Project.create(name: "Animals", date: "2019-04-03", bio: "Save the animals")

a1 = Admin.create(first_name: "Rico", last_name: "Lowery", age: 26, address: "123 Berry Lane", gender: "M")
a2 = Admin.create(first_name: "Liberty", last_name: "Torres", age: 30, address: "456 Bluffstone Rock", gender: "F")
a3 = Admin.create(first_name: "Angelo", last_name: "Sanchez", age: 28, address: "567 Rain Lane", gender: "M")

v1 = VolunteerSignup.create(user_id: u1.id, project_id: p1.id)
v2 = VolunteerSignup.create(user_id: u2.id, project_id: p2.id)
v3 = VolunteerSignup.create(user_id: u3.id, project_id: p3.id)

d1 = Donation.create(amount: 50, user_id: u1.id, project_id: p1.id)
d2 = Donation.create(amount: 60, user_id: u2.id, project_id: p2.id)
d3 = Donation.create(amount: 10, user_id: u3.id, project_id: p3.id)
