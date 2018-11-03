require_relative '../main/deliveries/dot_ball'
require_relative '../main/deliveries/single_ball'
require_relative '../main/deliveries/double_ball'
require_relative '../main/deliveries/triple_ball'
require_relative '../main/deliveries/four_ball'
require_relative '../main/deliveries/five_ball'
require_relative '../main/deliveries/six_ball'
require_relative '../main/deliveries/out_ball'

def update_onfield_player(player, match)
  delivery = Out.new(match)
  delivery.update_player(player)
end

def update_score(outcome, match)
  if(outcome == "dot")
    delivery = Dot.new(match)
    delivery.update()
  elsif(outcome == "single")
    delivery = Single.new(match)
    delivery.update()
  elsif(outcome == "double")
    delivery = Double.new(match)
    delivery.update()
  elsif(outcome == "triple")
    delivery = Triple.new(match)
    delivery.update()
  elsif(outcome == "four")
    delivery = Four.new(match)
    delivery.update()
  elsif(outcome == "five")
    delivery = Five.new(match)
    delivery.update()
  elsif(outcome == "six")
    delivery = Six.new(match)
    delivery.update()
  else
    delivery = Out.new(match)
    delivery.update()
  end
end