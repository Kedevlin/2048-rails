class SiteController < ApplicationController

  def index; end

  def save_game
    game = Game.create(
      self.score = params["score"]
      )
    render :json => {"something" => "else"}
  end

  def delete_game
  end

  def leaderboard
    
  end

end
