require 'pry'
class SiteController < ApplicationController

  def index; end

  def save_game
    # binding.pry
    game = Game.create(
      :state => params["state"]
      )
      binding.pry
      redirect_to root_path

    # render :json => {"something" => "else"}
    #
    #
    # this.grid        = new Grid(gameState.grid.size,
    #                             gameState.grid.cells); // Reload grid
    # this.score       = gameState.score;
    # this.over        = gameState.over;
    # this.won         = gameState.won;
    # this.keepPlaying = gameState.keepPlaying;

    # {"state"=>
    #   {"grid"=>
    #     {"size"=>"4",
        #  "cells"=>
        #   {"0"=>
        #     {"0"=>{"position"=>{"x"=>"0", "y"=>"0"}, "value"=>"2"},
        #      "1"=>"",
        #      "2"=>{"position"=>{"x"=>"0", "y"=>"2"}, "value"=>"16"},
        #      "3"=>{"position"=>{"x"=>"0", "y"=>"3"}, "value"=>"2"}},
        #    "1"=>
        #     {"0"=>{"position"=>{"x"=>"1", "y"=>"0"}, "value"=>"2"},
        #      "1"=>"",
        #      "2"=>"",
        #      "3"=>{"position"=>{"x"=>"1", "y"=>"3"}, "value"=>"4"}},
        #    "2"=>{"0"=>"", "1"=>"", "2"=>"", "3"=>""},
        #    "3"=>{"0"=>"", "1"=>"", "2"=>"", "3"=>""}}},
    #    "score"=>"44",
    #    "over"=>"false",
    #    "won"=>"false",
    #    "keepPlaying"=>"false"},
    #  "controller"=>"site",
    #  "action"=>"save_game"}

  end

  def delete_game
  end

  def leaderboard
    @leaders = User.order(:high_score).limit(3)
    render :json  => @leaders, :only => [:uid, :high_score], :callback => 'updateLeaderboard'
  end

end
