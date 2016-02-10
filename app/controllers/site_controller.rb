require 'pry'
class SiteController < ApplicationController

  def index; end

  def delete_game
    Game.destroy(params[:id])
    render :json => []
  end

  def leaderboard
    @leaders = User.order(high_score: :desc).limit(3)
    render :json  => @leaders, :only => [:uid, :high_score]
  end

end
