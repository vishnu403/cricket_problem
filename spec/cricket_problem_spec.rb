require('./cricket_problem.rb')

describe "cricket match emulator" do
  it "should return the runs scored by each player" do
    expect(get_match_details).to eql(nil)
  end
end