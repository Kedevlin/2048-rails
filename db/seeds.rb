# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


users = [{uid: 156, high_score: 1}, {uid: 324, high_score: 342}, {uid: 1, high_score: 232}, {uid: 234, high_score: 231}, {uid: 2, high_score: 213}]

users.each do |user|
  User.new(user)
end