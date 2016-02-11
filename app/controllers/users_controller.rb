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
    score = @current_user.high_score if @current_user
    score = 0 if score.nil? 
    render :json => score
  end

  def new_best_score
    score = params[:score]
    @current_user.high_score = score
    @current_user.save
    render :json => score
  end

end
