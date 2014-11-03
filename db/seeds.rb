# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.create(title: 'Post 1', body: Forgery(:lorem_ipsum).words(180))
Post.create(title: 'Post 2', body: Forgery(:lorem_ipsum).words(180))

