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



u1 = User.create(first_name: "Devante", last_name: "Lowery", age: 26, address: "123 Berry Lane", email: "devante@gmail.com", phone_number: 512-555-55555)
u2 = User.create(first_name: "Adri", last_name: "Torres", age: 30, address: "456 Bluffstone Rock", email: "adri@gmail.com", phone_number: 512-111-1111)
u3 = User.create(first_name: "Raul", last_name: "Sanchez", age: 28, address: "567 Rain Lane", email: "raul@gmail.com", phone_number: 512-555-55555)
u4 = User.create(first_name: "Emily", last_name: "Nguyen", age: 26, address: "123 Berry Lane", email: "emily@gmail.com", phone_number: 512-111-1111)
u5 = User.create(first_name: "Hadi", last_name: "Chloun", age: 30, address: "456 Bluffstone Rock", email: "hadi@gmail.com", phone_number: 512-555-55555)
u6 = User.create(first_name: "Jose", last_name: "Mendoza", age: 28, address: "567 Rain Lane", email: "jose@gmail.com", phone_number: 512-555-55555)
u7 = User.create(first_name: "Celeste", last_name: "Carter", age: 26, address: "123 Berry Lane", email: "celeste@gmail.com", phone_number: 512-555-55555)
u8 = User.create(first_name: "Udenna", last_name: "Nebeolisa", age: 30, address: "456 Bluffstone Rock", email: "udenna@gmail.com", phone_number: 512-111-1111)
u9 = User.create(first_name: "Andre", last_name: "Hao Hochi", age: 28, address: "567 Rain Lane", email: "andre@gmail.com", phone_number: 512-555-55555)
u10 = User.create(first_name: "Triston", last_name: "Herbst", age: 26, address: "123 Berry Lane", email: "triston@gmail.com", phone_number: 512-111-1111)
u11 = User.create(first_name: "Brian", last_name: "Cook", age: 30, address: "456 Bluffstone Rock", email: "brian@gmail.com", phone_number: 512-555-55555)
u12 = User.create(first_name: "Gabby", last_name: "Cook", age: 28, address: "567 Rain Lane", email: "gaby@gmail.com", phone_number: 512-555-55555)

a1 = Admin.create(first_name: "Rico", last_name: "Lowery", age: 26, address: "123 Berry Lane", phone_number: 512-555-55555)
a2 = Admin.create(first_name: "Liberty", last_name: "Torres", age: 30, address: "456 Bluffstone Rock", phone_number: 512-111-1111)
a3 = Admin.create(first_name: "Angelo", last_name: "Xenakis", age: 28, address: "567 Rain Lane", phone_number: 512-555-55555)
a4 = Admin.create(first_name: "Ian", last_name: "Davies", age: 26, address: "123 Berry Lane", phone_number: 512-555-55555)
a5 = Admin.create(first_name: "Antonio", last_name: "Reid", age: 30, address: "456 Bluffstone Rock", phone_number: 512-555-55555)
a6 = Admin.create(first_name: "Nestor", last_name: "Venegas", age: 28, address: "567 Rain Lane", phone_number: 512-555-55555)

p1 = Project.create(name: "Children & Youth", date: "2019-04-02", bio: "Be part of our project[...]", admin_id: a1.id)
p2 = Project.create(name: "Hunger", date: "2019-04-04", bio: "Be part of our project[...]", admin_id: a2.id)
p3 = Project.create(name: "Animals", date: "2019-04-03", bio: "Be part of our project[...]", admin_id: a3.id)
p4 = Project.create(name: "Disabilities", date: "2019-04-02", bio: "Be part of our project[...]", admin_id: a5.id)
p5 = Project.create(name: "LGBT+", date: "2019-04-04", bio: "Be part of our project[...]", admin_id: a4.id)
p6 = Project.create(name: "Immigrants & Refugees", date: "2019-04-03", bio: "Be part of our project[...]", admin_id: a6.id)

v1 = VolunteerSignup.create(user_id: u1.id, project_id: p1.id)
v2 = VolunteerSignup.create(user_id: u2.id, project_id: p2.id)
v3 = VolunteerSignup.create(user_id: u3.id, project_id: p3.id)
v4 = VolunteerSignup.create(user_id: u5.id, project_id: p4.id)
v5 = VolunteerSignup.create(user_id: u4.id, project_id: p5.id)
v6 = VolunteerSignup.create(user_id: u6.id, project_id: p6.id)
v7 = VolunteerSignup.create(user_id: u7.id, project_id: p1.id)
v8 = VolunteerSignup.create(user_id: u8.id, project_id: p2.id)
v9 = VolunteerSignup.create(user_id: u9.id, project_id: p3.id)
v10 = VolunteerSignup.create(user_id: u10.id, project_id: p4.id)
v11 = VolunteerSignup.create(user_id: u11.id, project_id: p5.id)
v12 = VolunteerSignup.create(user_id: u12.id, project_id: p6.id)

d1 = Donation.create(amount: 50, user_id: u1.id, project_id: p1.id)
d2 = Donation.create(amount: 60, user_id: u2.id, project_id: p2.id)
d3 = Donation.create(amount: 10, user_id: u3.id, project_id: p3.id)
d4 = Donation.create(amount: 50, user_id: u5.id, project_id: p4.id)
d5 = Donation.create(amount: 60, user_id: u4.id, project_id: p5.id)
d6 = Donation.create(amount: 10, user_id: u6.id, project_id: p6.id)
d1 = Donation.create(amount: 50, user_id: u7.id, project_id: p1.id)
d2 = Donation.create(amount: 60, user_id: u8.id, project_id: p2.id)
d3 = Donation.create(amount: 10, user_id: u9.id, project_id: p3.id)
d4 = Donation.create(amount: 50, user_id: u10.id, project_id: p4.id)
d5 = Donation.create(amount: 60, user_id: u11.id, project_id: p5.id)
d6 = Donation.create(amount: 10, user_id: u12.id, project_id: p6.id)
