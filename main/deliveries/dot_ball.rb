require_relative "../match.rb"

class Dot
  attr_accessor :match

  def update(current_balls_left)
     current_balls_left-1
  end
end