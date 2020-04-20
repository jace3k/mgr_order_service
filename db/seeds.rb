# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
orders = []
(1..1000).each { |id| (1..((id % 10) + 15)).each {|order| orders.append({
  quantity: rand(5..50),
  product_id: id
})} }

Order.create(orders)
