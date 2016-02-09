class Game < ActiveRecord::Base
  belongs_to :user
  serialize :state, JSON
end
