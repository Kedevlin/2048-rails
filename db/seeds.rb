users = [{high_score: 231, uid: 215}, {high_score: 25, uid: 55}]

users.each do |user|
  User.create(user)
end