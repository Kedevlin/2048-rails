class SiteController < ApplicationController

  def index; end

  def save_game
    redirect_to root_path
    # game = Game.create(
    #   self.score = params["score"]
    #   )
    # render :json => {"something" => "else"}
  end

  def delete_game
  end

  def leaderboard
    @leaders = User.order(:high_score).limit(3)
    render :json  => @leaders, :only => [:uid, :high_score], :callback => 'updateLeaderboard'
  end

end
