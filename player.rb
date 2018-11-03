class Player
  attr_accessor :probablity, :balls_faced, :runs_scored, :on_strike
  def initialize(dot, single, double, triple, four, five, six, out, balls_faced, runs_scored, on_strike)
    @probablity = {"dot"=>dot, "single" => single, "double" =>double, "triple" => triple, "four"=> four, "five"=> five, "six"=> six, "out"=>out}
    @balls_faced = balls_faced
    @runs_scored = runs_scored
    @on_strike = on_strike
  end
  def play_ball
    "played a ball"
  end
end