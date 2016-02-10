class UsersController < ApplicationController

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
  end

  def best_score
    score = User.find(params[:id]).score
    render :json => score
  end

end
