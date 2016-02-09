require 'pry'
class SiteController < ApplicationController

  def index; end

  def save_game
    game = Game.create(
      :state => params["state"],
      :user_id => @current_user.id
      )
    redirect_to root_path
  end

  def delete_game
  end

  def leaderboard
    @leaders = User.order(:high_score).limit(3)
    render :json  => @leaders, :only => [:uid, :high_score], :callback => 'updateLeaderboard'
  end

end
