# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Category.create(name: 'Frontend', description: "qwe")
Category.create(name: 'Backend', description: "qwe")
Category.create(name: 'Graphics', description: "qwe")
Category.create(name: 'Project menager', description: "qwe")
Category.create(name: 'Dealer', description: "qwe")
Category.create(name: 'Marketer', description: "qwe")



Post.create(user_id: 1, description: "Cokolwiek cokolwiek", category_id: 1)
Post.create(user_id: 1, description: "Kurwa kurwa", category_id: 3)
Post.create(user_id: 1, description: "qweqwe", category_id: 2)
Post.create(user_id: 1, description: "Cokolwiek cokolwiek", category_id: 3)
Post.create(user_id: 1, description: "Kurwa kurwa", category_id: 4)
Post.create(user_id: 1, description: "qweqwe", category_id: 5)
Post.create(user_id: 1, description: "Cokolwiek cokolwiek", category_id: 6)
Post.create(user_id: 1, description: "Kurwa kurwa", category_id: 1)
Post.create(user_id: 1, description: "qweqwe", category_id: 4   )