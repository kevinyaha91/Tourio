# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
users = User.create!(
		email:"kevin@gmail.com",
		firstname: "Kevin",
		lastname: "Yang",
		bio: "damn",
		city: "la",
		state: "ca",
		country: "us",
		password: "123",
		tour_guide: true
)
users = User.create!(
		email:"nam@gmail.com",
		firstname: "nam",
		lastname: "nyugen",
		bio: "shit",
		city: "cuca",
		state: "ca",
		country: "us",
		password: "123",
		tour_guide: true
)
users = User.create!(
		email:"eric@gmail.com",
		firstname: "Eric",
		lastname: "Yang",
		bio: "cool",
		city: "la",
		state: "ca",
		country: "us",
		password: "123",
		tour_guide: false
)


users = User.create!(
		email:"Larry@gmail.com",
		firstname: "Larry",
		lastname: "Smith",
		bio: "cool",
		city: "Pasadena",
		state: "CA",
		country: "USA",
		password: "123",
		tour_guide: true
)
users = User.create!(
		email:"Daniel@gmail.com",
		firstname: "Daniel",
		lastname: "Atkins",
		bio: "cool",
		city: "Pasadena",
		state: "CA",
		country: "USA",
		password: "123",
		tour_guide: true
)
