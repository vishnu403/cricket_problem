require "pickup"

class Probability
  attr_accessor :probability
  def initialize(dot, single, double, triple, four, five, six, out)
    @probability = {
        "dot" => dot,
        "single" => single,
        "double" => double,
        "triple" => triple,
        "four" => four,
        "five" => five,
        "six" => six,
        "out" => out,
       }
  end
  def get_outcome()
    pickup = Pickup.new(@probability)
    pickup.pick
  end
end