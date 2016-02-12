require 'pry'
class SiteController < ApplicationController
before_action :require_login, only: :index

  def index; end

  def delete_game
    Game.destroy(params[:id])
    render :json => [], :status => :ok
  end

  def leaderboard
    @leaders = User.order(high_score: :desc).limit(3)
    if @leaders
      render :json  => @leaders, :only => [:uid, :high_score]
    else
      render :json => [], :status => :no_content
    end
  end

end
