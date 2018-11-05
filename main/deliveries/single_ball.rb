class Single
  attr_accessor :match
  def initialize(match)
    @match = match
  end
  def update(current_balls_left, current_runs_left, )
    @match.balls_left -= 1
    @match.runs_left -=1
    @match.player1.runs_scored += 1
    @match.player1.balls_faced += 1
    @match.player1.on_strike = false
    @match.player2.on_strike = true
    @match.player1, @match.player2 = @match.player2, @match.player1
  end
end