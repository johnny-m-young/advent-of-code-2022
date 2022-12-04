require "day_3/puzzle_2"

describe NewPriorityAdder do
  it "formats the data into groups of three" do
    data = "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\n" + 
    "wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
    
    expected_output = [
                        ["vJrwpWtwJgWrhcsFMMfFFhFp", "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL", "PmmdzqPrVvPwwTWBwg"], 
                        ["wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn", "ttgJtRGJQctTZtZT", "CrZsJsPPZsGzwwsLwLmpwMDw"]
                      ]

    expect(subject.get_formatted_data(data)).to eq(expected_output)
  end

  it "correctly identifies the badge" do
    formatted_data = [
                      ["vJrwpWtwJgWrhcsFMMfFFhFp", "jqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL", "PmmdzqPrVvPwwTWBwg"], 
                      ["wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn", "ttgJtRGJQctTZtZT", "CrZsJsPPZsGzwwsLwLmpwMDw"]
                     ]
    
    expect(subject.get_badges(formatted_data)).to eq ["r", "Z"]
  end

  it "correctly adds up the priorities of items" do
    items = ["r", "Z"]

    sum_of_priorities = subject.sum_item_priorities(items)

    expect(sum_of_priorities).to eq 70
  end
end
