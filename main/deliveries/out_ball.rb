class Out
  attr_accessor :match
  def initialize(match)
    @match = match
  end
  def update()
    @match.balls_left -= 1
    @match.wickets_left -= 1
    @match.player1.balls_faced += 1
    @match.player1.on_strike = false
  end
  def update_player(player)
    @match.player1 = player
    @match.player1.on_strike = true
  end
end