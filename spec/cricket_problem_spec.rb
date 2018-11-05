require_relative("../main/player")
require_relative ('../main/../main/probabilities')
  describe "probability checking" do
    it "should return six as it has 100% probability" do
      prob = Probability.new(0,0,0,0,0,0,100,0)
      expect(prob.get_outcome()).to eql("six")
    end
    it "should return dot as it has 100% probability" do
      prob = Probability.new(100,0,0,0,0,0,0,0)
      expect(prob.get_outcome()).to eql("dot")
    end
    it "should return single as it has 100% probability" do
      prob = Probability.new(0,100,0,0,0,0,0,0)
      expect(prob.get_outcome()).to eql("single")
    end
    it "should return double as it has 100% probability" do
      prob = Probability.new(0,0,100,0,0,0,0,0)
      expect(prob.get_outcome()).to eql("double")
    end
    it "should return triple as it has 100% probability" do
      prob = Probability.new(0,0,0,100,0,0,0,0)
      expect(prob.get_outcome()).to eql("triple")
    end
    it "should return four as it has 100% probability" do
      prob = Probability.new(0,0,0,0,100,0,0,0)
      expect(prob.get_outcome()).to eql("four")
    end
    it "should return five as it has 100% probability" do
      prob = Probability.new(0,0,0,0,0,100,0,0)
      expect(prob.get_outcome()).to eql("five")
    end
    it "should return out as it has 100% probability" do
      prob = Probability.new(0,0,0,0,0,0,0,100)
      expect(prob.get_outcome()).to eql("out")
    end
  end
