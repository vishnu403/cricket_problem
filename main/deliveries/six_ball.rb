class Six
  attr_accessor :match
  def initialize(match)
    @match = match
  end
  def update()
    @match.balls_left -= 1
    @match.runs_left -=6
    @match.player1.runs_scored += 6
    @match.player1.balls_faced += 1
  end
end