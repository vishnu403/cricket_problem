class Match
  attr_accessor :scorecard
  def initialize(scorecard)
    @scorecard = scorecard
  end
  def ball_bowled()
    outcome = @scorecard.player1.play_ball()
    @scorecard.update(outcome)
  end
end