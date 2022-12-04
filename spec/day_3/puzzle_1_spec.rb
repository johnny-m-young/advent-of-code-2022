require "day_3/puzzle_1"

describe PriorityAdder do
  it "formats data into arrays of two packs correctly" do
    data = "vJrwpWtwJgWrhcsFMMfFFhFp\njqHRNqRjqzjGDLGLrsFMfFZSrLrFZsSL\nPmmdzqPrVvPwwTWBwg\n" + 
    "wMqvLMZHhHMvwLHjbvcjnnSBnvTQFn\nttgJtRGJQctTZtZT\nCrZsJsPPZsGzwwsLwLmpwMDw"
    formatted_data = subject.get_formatted_data(data)
    expected_output = [
                        ["vJrwpWtwJgWr","hcsFMMfFFhFp"], 
                        ["jqHRNqRjqzjGDLGL","rsFMfFZSrLrFZsSL"],
                        ["PmmdzqPrV","vPwwTWBwg"],
                        ["wMqvLMZHhHMvwLH","jbvcjnnSBnvTQFn"],
                        ["ttgJtRGJ","QctTZtZT"],
                        ["CrZsJsPPZsGz","wwsLwLmpwMDw"]
                      ]

    expect(formatted_data).to eq(expected_output)
  end

  it "correctly identifies shared items" do
    formatted_data = [
                        ["vJrwpWtwJgWr","hcsFMMfFFhFp"], 
                        ["jqHRNqRjqzjGDLGL","rsFMfFZSrLrFZsSL"],
                        ["PmmdzqPrV","vPwwTWBwg"],
                        ["wMqvLMZHhHMvwLH","jbvcjnnSBnvTQFn"],
                        ["ttgJtRGJ","QctTZtZT"],
                        ["CrZsJsPPZsGz","wwsLwLmpwMDw"]
                      ]
    shared_items = subject.get_shared_item_type(formatted_data)
    
    expect(shared_items).to eq ["p", "L", "P", "v", "t", "s"]
  end

  it "correctly adds up the priorities of items" do
    items = ["p", "L", "P", "v", "t", "s"]

    sum_of_priorities = subject.sum_item_priorities(items)

    expect(sum_of_priorities).to eq 157
  end
end
