require_relative "../match.rb"

class Dot
  attr_accessor :match
  def initialize(match)
    @match = match
  end
  def update()
     @match.balls_left -= 1
  end
end