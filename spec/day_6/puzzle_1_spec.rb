require "day_6/puzzle_1"

describe MarkerDetector do
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

    expect(outputs).to eq [7, 5, 6, 10, 11]
  end
end
