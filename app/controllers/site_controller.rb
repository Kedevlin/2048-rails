require 'pry'
class SiteController < ApplicationController

  def index; end

  def save_game
    game = Game.create(
      :state => params["state"],
      )
    game.user_id = @current_user.id
    game.save
    redirect_to root_path
  end

  def load_all_games
    games = current_user.games
    render :json => games
  end

  def load_game
    game = Game.find(params[:id])
    render :json => game, :only => :state
  end

  def delete_game
    Game.destroy(params[:id])
    render :json => []
  end

  def leaderboard
    @leaders = User.order(:high_score).limit(3)
    render :json  => @leaders, :only => [:uid, :high_score]
  end

end
