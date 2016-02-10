require 'pry'
class SiteController < ApplicationController

  def index; end

  def leaderboard
    @leaders = User.order(high_score: :desc).limit(3)
    render :json  => @leaders, :only => [:uid, :high_score]
  end

end
