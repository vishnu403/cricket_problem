class Match
  attr_accessor :balls_left, :runs_left, :wickets_left, :player1, :player2
  def initialize(balls_left, runs_left, wickets_left, player1, player2)
    @balls_left = balls_left
    @runs_left = runs_left
    @wickets_left = wickets_left
    @player1 = player1
    @player2 = player2
  end
  def ball_bowled()
    outcome = @player1.play_ball()
    outcome
  end
end