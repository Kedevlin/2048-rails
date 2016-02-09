users = [{uid: 156, high_score: 1}, {uid: 324, high_score: 342}, {uid: 1, high_score: 232}, {uid: 234, high_score: 231}, {uid: 2, high_score: 213}]

users.each do |user|
  User.create(user)
end