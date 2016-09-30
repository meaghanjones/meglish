# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
             email: "meaghan.m.jones@gmail.com",
             password:              "epicodus",
             password_confirmation: "epicodus",
             admin: true)

categories_list = [
 "Interview Prep",
 "Business",
 "Social",
 "IELTS",
 "TOEFL",
 "Academic"
]

categories_list.each do |name|
 Category.create( name: name )
end

courses_list = [
  ["Want to hike in English?", "After taking this class you will know all the things to take on your next hiking trip in the US!", "intermediate", "all ages", "speaking", ""],
  ["English Slang", "Learning American slang is important to understand series and having American friends.", "intermediate", "all ages", "speaking"],
  ["Interview Preparation", "Learn the English and cultural considerations for having a successful interview in English.", "upper-intermediate", "adults", "speaking"]

]

courses_list.each do |name, description, level, age, skill, photo|
  Course.create(name: name, description: description, level: level, age: age, skill: skill)
end

locations_list = [
  [-23.5831733, -46.6475448, "Rua Professor Miguel Milano, Sao Paulo, Brasil", "Vila Mariana, Sao Paulo, Brazil"],
  [-33.4402733, -70.6455273, "Santa Lucia Hill", "Santiago Centro, Santiago, Chile"]
]

locations_list.each do |latitude, longitude, address, title|
  Location.create(latitude: latitude, longitude: longitude, address: address, title: title)
end
