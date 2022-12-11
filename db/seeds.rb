# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Seeding.."

User.create(first_name: "Kevin", last_name: "Mutai", email: "kevinmutai@gmail.com", password_digest: "123")

Car.create(title: "C200", category: "sedan", description: "small compact car", image_url: "https://images.drive.com.au/driveau/image/upload/c_fill,f_auto,g_auto,h_675,q_auto:eco,w_1200/cms/uploads/ewqqhl6llfdelaamjm8n", user_id: 1)
Car.create(title: "Landcruiser", category: "SUV", description: "offroad vehicle", image_url: "https://media.toyota-gib.com/web-imgs/models/land-cruiser-70/vdj76l-rkmnyv/web/vdj76l-rkmnyv-G1.jpg", user_id: 1)

CarCompany.create(car_id: 1, company_id: 1)
CarCompany.create(car_id: 2, company_id: 2)

Company.create(name: "Mercedes", country: "Germany")
Company.create(name: "Toyota", country: "Japan")

puts "Done seeding!"
