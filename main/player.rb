class Player
  attr_accessor :probability, :on_strike, :name, :balls_faced, :runs_scored, :is_out
  def initialize(probability, on_strike, name)
    @is_out = false
    @on_strike = on_strike
    @probability = probability
    @balls_faced = 0
    @runs_scored = 0
    @name = name
  end
  def play_ball
    outcome = @probability.get_outcome()
    outcome
  end
end