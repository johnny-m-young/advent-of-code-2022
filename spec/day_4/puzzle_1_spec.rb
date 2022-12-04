require "day_4/puzzle_1"

describe OverlapFinder do
  it "parses each line into 2 arrays, one for each elf" do
    data = "2-4,6-8\n2-3,4-5\n5-7,7-9\n2-8,3-7\n6-6,4-6\n2-6,4-8"
    expected_output = [
      [["2","4"], ["6","8"]],
      [["2","3"], ["4","5"]],
      [["5","7"], ["7", "9"]],
      [["2","8"], ["3","7"]],
      [["6","6"], ["4","6"]],
      [["2","6"], ["4","8"]]
    ]

    expect(subject.get_formatted_data(data)).to eq expected_output
  end

  it "correctly identifies the number of overlaps" do
    formatted_data = expected_output = [
      [["2","4"], ["6","8"]],
      [["2","3"], ["4","5"]],
      [["5","7"], ["7", "9"]],
      [["2","8"], ["3","7"]],
      [["6","6"], ["4","6"]],
      [["2","6"], ["4","8"]]
    ]

    expect(subject.get_overlaps(formatted_data)).to eq 2
  end
end
