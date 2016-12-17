# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: 'Frontend', description: "Look at our frontend section")
Category.create(name: 'Backend', description: "Look at our backend section")
Category.create(name: 'Graphics', description: "Look at our graphics section")
Category.create(name: 'Project menager', description: "Look at our projects menagers section")
Category.create(name: 'Dealer', description: "Look at our dealers section")
Category.create(name: 'Marketer', description: "Look at our marketers section")


Post.create(user_id: 1, description: "Coś fajnego", category_id: 1)
Post.create(user_id: 1, description: "Coś innego kurcze", category_id: 3)
Post.create(user_id: 1, description: "Cokolwiek", category_id: 2)
Post.create(user_id: 1, description: "Cokolwiek cokolwiek", category_id: 3)
Post.create(user_id: 1, description: "Jakiś post fajny", category_id: 4)
Post.create(user_id: 1, description: "Testets", category_id: 5)
Post.create(user_id: 1, description: "Cokolwiek cokolwiek", category_id: 6)
Post.create(user_id: 1, description: "Kurwa kurwa", category_id: 1)
Post.create(user_id: 1, description: "qweqwe", category_id: 4   )