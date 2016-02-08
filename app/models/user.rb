class User < ActiveRecord::Base
  validates :uid, presence: true

  def self.find_or_create_from_omniauth(auth_hash)
    user = self.find_by(uid: auth_hash["uid"])
    if !user.nil?
      return user
    else
      user = User.new
      user.uid        = auth_hash["uid"]
      if user.save
        return user
      else
        return nil
      end
    end
  end
end
