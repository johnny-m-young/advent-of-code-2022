require "day_2/puzzle_2"

describe NewScoreAdder do
  it "adds scores correctly" do
    test_data = ["A Y", "B X", "C Z"]
    score = subject.get_score(test_data)
    expect(score).to eq 12
  end
end
