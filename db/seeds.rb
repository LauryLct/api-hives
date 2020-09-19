# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Hive.destroy_all
puts 'all hives destroyed'

Hive.create!(
  name: 'La ruche de Didier',
  weight: rand(20..60)
)
Hive.create!(
  name: 'La ruche de Martin',
  weight: rand(20..60)
)
Hive.create!(
  name: 'La ruche de Robert',
  weight: rand(20..60)
)
Hive.create!(
  name: 'La ruche de Luc',
  weight: rand(20..60)
)
Hive.create!(
  name: 'La ruche de Jean',
  weight: rand(20..60)
)
Hive.create!(
  name: 'La ruche de Bastien',
  weight: rand(20..60)
)

puts "All hives created"
