class GameController < ApplicationController
  def play
    @player_move = params.fetch(:move)
    @computer_move = ["rock", "paper", "scissors"].sample
    @result = nil

    if @player_move == @computer_move
      @result = "tied"
    elsif @player_move == "rock" && @computer_move == "paper"
      @result = "lost"
    elsif @player_move == "paper" && @computer_move == "scissors"
      @result = "lost"
    elsif @player_move == "scissors" && @computer_move == "rock"
      @result = "lost"
    else
      @result = "won"
    end
    render({ :template => "game_templates/play" })
  end

  def rules
    render({ :template => "game_templates/rules" })
  end
end
