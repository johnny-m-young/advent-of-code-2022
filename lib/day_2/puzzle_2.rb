class NewScoreAdder
  # A = rock
  # B = paper
  # C = scissors
  # X = lose (scores 0)
  # Y = draw (scores 3)
  # Z = win (scores 6)
  # Rock scores 1
  # Paper scores 2 
  # Scissors scores 3
  
  def get_formatted_data
    File.read("data_puzzle_1.txt").split("\n")
  end

  def get_score(data)
    scores = { "A X": 3, "A Y": 4, "A Z": 8, "B X": 1, "B Y": 5, "B Z": 9, "C X": 2, "C Y": 6, "C Z": 7 }
    score = 0

    data.each do |choices|
      score += scores[choices.to_sym]
    end

    return score
  end
end

# adder = NewScoreAdder.new()
# data = adder.get_formatted_data()
# score = adder.get_score(data)
# p score
