require_relative './match.rb'
require_relative './player.rb'
require_relative './score_updator.rb'

virat = Player.new(5, 30, 25, 10, 15, 1, 9, 5,0,0,true, "virat")
dhoni = Player.new(10, 40, 20, 5, 10, 1, 4, 10,0,0,false,"dhoni")
bumrah = Player.new(20, 30, 15, 5, 5, 1, 4, 20,0,0,false,"bumrah")
nehra = Player.new(30, 25, 10, 0, 5, 1, 4, 30,0,0,false,"nehra")


players = [virat, dhoni, bumrah, nehra, nehra1]

match = Match.new(24,40,3, players[0], players[1])

while(match.balls_left > 0 and match.wickets_left > 0 and match.runs_left > 0)
  outcome = match.ball_bowled()
  if outcome == "out"
    update_score(outcome, match)
    if match.wickets_left > 0
      update_onfield_player(players[-match.wickets_left], match)
    end
  else
    update_score(outcome, match)
  end
end


