# require_relative '../main/deliveries/dot_ball'
# require_relative '../main/deliveries/single_ball'
# require_relative '../main/deliveries/double_ball'
# require_relative '../main/deliveries/triple_ball'
# require_relative '../main/deliveries/four_ball'
# require_relative '../main/deliveries/five_ball'
# require_relative '../main/deliveries/six_ball'
# require_relative '../main/deliveries/out_ball'

class ScoreCard
  attr_accessor :runs_left, :balls_left, :wickets_left, :players, :player1, :player2

  def initialize(runs_left, balls_left, wickets_left, players)
    @runs_left = runs_left
    @balls_left = balls_left
    @wickets_left = wickets_left
    @players = players

  end
  def update(outcome, player1, player2 )
    @player1 = player1
    @player2 = player2
    if outcome == "dot"
      @balls_left = @balls_left-1
    elsif outcome == "single"
      @balls_left -=1
      @runs_left -= 1
      @player1.balls_faced += 1
      @player1.runs_scored += 1
      @player1.on_strike = false
      @player1 , @player2 = @player2, @player1
      @player2.on_strike = true
    elsif outcome == "double"
      @balls_left -= 1
      @runs_left -= 2
      @player1.balls_faced += 1
      @player1.runs_scored += 2
    elsif outcome == "triple"
      @balls_left -=1
      @runs_left -= 3
      @player1.balls_faced += 1
      @player1.runs_scored += 3
      @player1.on_strike = false
      @player1 , @player2 = @player2, @player1
      @player2.on_strike = true
    elsif outcome == "four"
      @balls_left -=1
      @runs_left -= 4
      @player1.balls_faced += 1
      @player1.runs_scored += 4
    elsif outcome == "five"
      @balls_left -=1
      @runs_left -= 5
      @player1.balls_faced += 1
      @player1.runs_scored += 5
      @player1.on_strike = false
      @player1 , @player2 = @player2, @player1
      @player2.on_strike = true
    elsif outcome == "six"
      @balls_left -=1
      @runs_left -= 6
      @player1.balls_faced += 1
      @player1.runs_scored += 6
    elsif outcome == "out" and @wickets_left > 0
      @balls_left -=1
      @wickets_left -=1
      @player1.balls_faced += 1
      @player1.is_out = true
      @player1 = @players[-wickets_left]
      @player1.on_strike = true
    end
    {"player1" => @player1, "player2" => @player2}
  end
end