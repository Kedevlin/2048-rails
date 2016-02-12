class UsersController < ApplicationController

  def save_game
    game = Game.create(
      :state => params["state"],
      )
    game.user_id = @current_user.id
    render :json => { :errors => game.errors } if !game.save  
    redirect_to root_path
  end

  def load_all_games
    games = current_user.games.order("created_at DESC").limit(3)
    if games
      render :json => games
    else
      render :json => [], :status => :no_content
    end
  end

  def load_game
    game = Game.find(params[:id])
    if game
      render :json => game, :only => :state
    else
      render :json => [], :status => :no_content
    end
  end

  def delete_game
  end

  def best_score
    score = @current_user.high_score if @current_user
    score = 0 if score.nil?
    if score
      render :json => score
    else
      render :json => [], :status => :no_content
    end
  end

  def new_best_score
    score = params[:score]
    @current_user.high_score = score
    @current_user.save
    if score
      render :json => score
    else
      render :json => [], :status => :no_content
    end
  end

end
