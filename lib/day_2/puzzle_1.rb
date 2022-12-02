class ScoreAdder
  # A = rock
  # B = paper
  # C = scissors
  # X = rock (scores 1)
  # Y = paper (scores 2)
  # Z = scissors (scores 3)
  # win scores 6
  # draw scores 3
  # lose scores 0
  
  def get_formatted_data
    File.read("data_puzzle_1.txt").split("\n")
  end

  def get_score(data)
    scores = { "A X": 4, "A Y": 8, "A Z": 3, "B X": 1, "B Y": 5, "B Z": 9, "C X": 7, "C Y": 2, "C Z": 6 }
    score = 0

    data.each do |choices|
      score += scores[choices.to_sym]
    end

    return score
  end
end

# adder = ScoreAdder.new()
# data = adder.get_formatted_data()
# score = adder.get_score(data)
# p score
