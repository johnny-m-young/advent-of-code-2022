require "day_6/puzzle_2"

describe MessageDetector do
  it "correctly identifies" do
    formatted_data = []
    formatted_data << subject.get_formatted_signal("mjqjpqmgbljsphdztnvjfqwrcgsmlb")
    formatted_data << subject.get_formatted_signal("bvwbjplbgvbhsrlpgdmjqwftvncz")
    formatted_data << subject.get_formatted_signal("nppdvjthqldpwncqszvftbrmjlhg")
    formatted_data << subject.get_formatted_signal("nznrnfrfntjfmvfwmzdfjlvtqnbhcprsg")
    formatted_data << subject.get_formatted_signal("zcfzfwzzqfrljwzlrfnpqdbhtmscgvjw")
    outputs = []

    formatted_data.each do |datum|
      outputs << subject.get_marker_position(datum)
    end

    expect(outputs).to eq [19, 23, 23, 29, 26]
  end
end
