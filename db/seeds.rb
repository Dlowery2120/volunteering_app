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



u1 = User.create(first_name: "Devante", last_name: "Lowery", age: 26, address: "123 Berry Lane", email: "devante@gmail.com", phone_number: 51255555555, password: "devante")
u2 = User.create(first_name: "Adri", last_name: "Torres", age: 30, address: "456 Bluffstone Rock", email: "adri@gmail.com", phone_number: 5121111111, password: "adri")
u3 = User.create(first_name: "Raul", last_name: "Sanchez", age: 18, address: "567 Rain Lane", email: "raul@gmail.com", phone_number: 51255555555, password: "raul")
u4 = User.create(first_name: "Emily", last_name: "Nguyen", age: 24, address: "123 Berry Lane", email: "emily@gmail.com", phone_number: 5121111111, password: "emily")
u5 = User.create(first_name: "Hadi", last_name: "Chloun", age: 35, address: "456 Bluffstone Rock", email: "hadi@gmail.com", phone_number: 51255555555, password: "hadi")
u6 = User.create(first_name: "Jose", last_name: "Mendoza", age: 28, address: "567 Rain Lane", email: "jose@gmail.com", phone_number: 51255555555, password: "jose")
u7 = User.create(first_name: "Celeste", last_name: "Carter", age: 55, address: "123 Berry Lane", email: "celeste@gmail.com", phone_number: 51255555555, password: "celeste")
u8 = User.create(first_name: "Udenna", last_name: "Nebeolisa", age: 22, address: "456 Bluffstone Rock", email: "udenna@gmail.com", phone_number: 5121111111, password: "udenna")
u9 = User.create(first_name: "Andre", last_name: "Hao Hochi", age: 45, address: "567 Rain Lane", email: "andre@gmail.com", phone_number: 51255555555, password: "andre")
u10 = User.create(first_name: "Triston", last_name: "Herbst", age: 26, address: "123 Berry Lane", email: "triston@gmail.com", phone_number: 5121111111, password: "triston")
u11 = User.create(first_name: "Brian", last_name: "Cook", age: 30, address: "456 Bluffstone Rock", email: "brian@gmail.com", phone_number: 51255555555, password: "brian")
u12 = User.create(first_name: "Donovan", last_name: "Sanders", age: 28, address: "567 Rain Lane", email: "donovan@gmail.com", phone_number: 51255555555, password: "donovan")

a1 = Admin.create(first_name: "Rico", last_name: "Lowery", age: 26, address: "123 Berry Lane", phone_number: 51255555555, email: "rico@gmail.com", password: "rico")
a2 = Admin.create(first_name: "Liberty", last_name: "Torres", age: 30, address: "456 Bluffstone Rock", phone_number: 5121111111, email: "liberty@gmail.com", password: "liberty")
a3 = Admin.create(first_name: "Angelo", last_name: "Xenakis", age: 28, address: "567 Rain Lane", phone_number: 51255555555, email: "angelo@gmail.com", password: "angelo")
a4 = Admin.create(first_name: "Ian", last_name: "Davies", age: 26, address: "123 Berry Lane", phone_number: 51255555555, email: "ian@gmail.com", password: "ian")
a5 = Admin.create(first_name: "Antonio", last_name: "Reid", age: 30, address: "456 Bluffstone Rock", phone_number: 51255555555, email: "antonio@gmail.com", password: "antonio")
a6 = Admin.create(first_name: "Nestor", last_name: "Venegas", age: 28, address: "567 Rain Lane", phone_number: 51255555555, email: "nestor@gmail.com", password: "nestor")

p1 = Project.create(name: "Children & Youth", date: "2017-05-07", bio: "Help children realize their full potential in life. Get on board, shine & sparkle while celebrating lives of children & families.", admin_id: a1.id)
p2 = Project.create(name: "Hunger", date: "2018-04-04", bio: "Help children realize their full potential in life. Get on board, shine & sparkle while celebrating lives of children & families.", admin_id: a2.id)
p3 = Project.create(name: "Animals", date: "2019-04-12", bio: "You can give so many animal a second chance at a life. Volunteer with homeless animals! Walk dogs, socialize cats, and more. Make A Donation. ", admin_id: a3.id)
p4 = Project.create(name: "People with Disabilities", date: "2019-04-02", bio: "There are plenty of rewarding ways to work with those experiencing some sort of physical or cognitive limitation and make an enduring difference. Consider donating today.", admin_id: a5.id)
p5 = Project.create(name: "LGBT+", date: "2020-11-08", bio: "Building Better Lives. Building welcoming communities, and ensuring a fulfilling future for all LGBT people. National advocacy & services organization looking out for LGBT.
", admin_id: a4.id)
p6 = Project.create(name: "Immigrants & Refugees", date: "2019-04-03", bio: "A community that stands alongside Immigrants and Refugees to fight for Migrant Justice. The fight for migrant justice is a marathon and we need you. Are you ready to take the next step?
", admin_id: a6.id)

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


