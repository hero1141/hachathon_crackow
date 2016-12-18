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

titles = ["React", "Angular", "Ruby on rails", "PHP", "C++", "ASP .NET", "Lua", "Java", "Pascal", "C#"]
description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."


Category.all.each { |c| c.posts.create(title: titles[rand(1...6)], user_id: 1, description: description)}
Category.all.each { |c| c.posts.create(title: titles[rand(1...6)], user_id: 2, description: description)}
Category.all.each { |c| c.posts.create(title: titles[rand(1...6)], user_id: 3, description: description)}
Category.all.each { |c| c.posts.create(title: titles[rand(1...6)], user_id: 4, description: description)}
Category.all.each { |c| c.posts.create(title: titles[rand(1...6)], user_id: 2, description: description)}


