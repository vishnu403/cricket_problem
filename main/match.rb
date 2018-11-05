class Match
  attr_accessor :scorecard
  def initialize(scorecard ,players)
    @scorecard = scorecard
    @players = players
    @player1 = @players[0]
    @player2 = @players[1]
  end
  def ball_bowled()
    outcome = @player1.play_ball()
    result = @scorecard.update(outcome, @player1, @player2)
    @player1 = result["player1"]
    @player2 = result["player2"]
  end
end