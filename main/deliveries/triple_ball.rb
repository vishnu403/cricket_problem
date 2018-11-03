class Triple
  attr_accessor :match
  def initialize(match)
    @match = match
  end
  def update()
    @match.balls_left -= 1
    @match.runs_left -=3
    @match.player1.runs_scored += 3
    @match.player1.balls_faced += 1
    @match.player1.on_strike = false
    @match.player2.on_strike = true
    @match.player1, @match.player2 = @match.player2, @match.player1
  end
end