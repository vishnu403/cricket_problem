require_relative './match.rb'
require_relative './player.rb'
require_relative './scorecard.rb'
require_relative './probabilities.rb'

virat_probability = Probability.new(5,30,25,10,15, 1, 9,5)
dhoni_probability = Probability.new(10, 40, 20,  5, 10,  1, 4,10)
bumrah_probability = Probability.new(20,30,15, 5,  5,  1, 4,20)
nehra_probability = Probability.new(30,   25, 10,0,  5,  1, 4,30)

virat = Player.new(virat_probability,true, 'virat')
dhoni = Player.new(dhoni_probability,false, 'dhoni')
bumrah = Player.new(bumrah_probability,false, 'bumrah')
nehra = Player.new(nehra_probability,false, 'nehra')


players = [virat, dhoni, bumrah, nehra]

scorecard = ScoreCard.new(40,24,3, players)

match = Match.new(scorecard,  players)

while(scorecard.balls_left > 0 and scorecard.wickets_left > 0 and scorecard.runs_left > 0)
  match.ball_bowled()
end