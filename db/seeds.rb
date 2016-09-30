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
 Category.create(name: name )
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
  [-33.4402733, -70.6455273, "Santa Lucia Hill", "Santiago Centro, Santiago, Chile"],
  [4.6482837, -74.2478939, "Bogota, Colombia", "Bogota, Colombia"],
  [55.7492837, 37.0706993, "Moscow, Russia", "Moscow, Russia"],
  [59.9174911, 30.0441918, "Saint Petersburg, Russia", "Saint Petersburg, Russia"],
  [-25.4947398, -49.4302288, "Curitiba, Brazil", "Curitiba, Brazil"],
  [-0.1862504, -78.5709705, "Quito, Ecuador", "Quito, Ecudao"],
  [37.565289, 126.8491201, "Seoul, South Korea", "Seoul, South Korea"],
  [25.085651, 121.4228179, "Taipei, Taiwan", "Taipei, Taiwan"],
  [-34.6153711, -58.5737497, "Buenos Aires, Argentina", "Buenos Aires, Argentina"],
  [40.4381311, -3.8196218, "Madrid, Spain", "Madrid, Spain"],
  [47.4813602, 18.9902188, "Budapest, Hungary", "Budapest, Hungary"],
  [41.0055005, 28.7319907, "Istanbul, Turkey", "Istanbul, Turkey"],
  [51.1272097, 16.8517804, "Wroclaw, Poland", "Wroclaw, Poland"],
  [-12.8805629, -38.5576723, "Salvador, Brazil", "Salvador, Brazil"],
  [-23.4695376, -47.5767173, "Sorocaba, Brazil", "Sorocaba, Brazil"],
  [52.2330653, 20.9211107, "Warsaw, Poland", "Warsaw, Poland"],
  [24.7253981, 46.2620454, "Riyadh, Saudi Arabia", "Riyadh, Saudi Arabia"],
  [29.8700041, 121.4318741, "Ningbo, Zhejiang, China", "Ningbo, Zhejiang, China"],
  [35.6693863, 139.6012949, "Tokyo, Japan", "Tokyo, Japan"],
  [32.1754521, 119.3192807, "Zhenjiang, Jiangsu, China", "Zhenjiang, Jiangsu, China"],
  [41.3948975, 2.0787276, "Barcelona, Spain", "Barcelona, Spain"],
  [30.6587488, 103.9354601, "Chengdu, Sichuan, China", "Chengdu, Sichuan, China"],
  [43.7800607, 11.1709278, "Florence, Italy", "Florence, Italy"],
  [58.0205419, 55.9540977, "Perm, Russia", "Perm, Russia"],
  [-8.7563695, -63.9249474, "Porto Velho, Brazil", "Porto Velho, Brazil"],
  [-23.5249374, -46.2659279, "Mogi das Cruzes, Brazil", "Mogi das Cruzes, Brazil"],
  [25.0757073, 54.9475509, "Dubai, United Arab Emirates", "Dubai, United Arab Emeriates"],
  [23.1259819, 112.9476477, "Guangzhou, China", "Guangzhou, China"],
  [-23.8629331, -46.429471, "Santos, Brazil", "Santos, Brazil"],
  [19.3910038, -99.2836998, "Mexico City", "Mexico City" ],
  [-12.0552581, -77.0802049, "Lima, Peru", "Lima, Peru"],
  [56.9715833, 23.9901733, "Riga, Latvia", "Riga, Latvia"],
  [-15.721387, -48.0774447, "Brasilia, Brazil", "Brasilia, Brazil"],
  [-22.8972043, -43.232191, "Rio de Janeiro, Brazil", "Rio de Janeiro, Brazil"],
  [-34.1593915, -70.7737187, "Rancagua, Chile", "Rancagua, Chile"]
]

locations_list.each do |latitude, longitude, address, title|
  Location.create(latitude: latitude, longitude: longitude, address: address, title: title)
end
