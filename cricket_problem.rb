require "./player.rb"
require "./match.rb"
require "./striker.rb"

virat = Player.new(5, 30, 25, 10, 15, 1, 9, 5,0,0,true)
dhoni = Player.new(10, 40, 20, 5, 10, 1, 4, 10,0,0,false)
bumrah = Player.new(20, 30, 15, 5, 5, 1, 4, 20,0,0,false)
nehra = Player.new(30, 25, 10, 0, 5, 1, 4, 30,0,0,false)

match = Match.new(24,40,3, virat, dhoni)

while(match.balls_left and match.wickets_left and match.runs_left)
  match.ball_bowled()
end


