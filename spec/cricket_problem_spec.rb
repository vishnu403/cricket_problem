require_relative("../main/player")

  describe "player plays a ball" do
    it "should return event occured on the ball" do
      player1 = Player.new(0,0,0,0,0,0,100,0,0,0,true)
      expect(player1.play_ball()).to eql("played a ball")
    end
  end
