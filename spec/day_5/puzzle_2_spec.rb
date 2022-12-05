require "day_5/puzzle_2"

describe NewTopCrateFinder do
  it "formats the instructions into an array of hashes" do
    instructions = "move 1 from 2 to 1\nmove 3 from 1 to 3\nmove 2 from 2 to 1\nmove 1 from 1 to 2"
    expected_output = [
      {qty: 1, from: 2, to: 1},
      {qty: 3, from: 1, to: 3 },
      {qty: 2, from: 2, to: 1},
      {qty: 1, from: 1, to: 2}
    ]

    expect(subject.get_formatted_instructions(instructions)).to eq expected_output
  end

  it "moves crates to the correct arrangement" do
    formatted_instructions = [
      {qty: 1, from: 2, to: 1},
      {qty: 3, from: 1, to: 3 },
      {qty: 2, from: 2, to: 1},
      {qty: 1, from: 1, to: 2}
    ]

    crate_arrangement = {
      1 => ["Z", "N"],
      2 => ["M", "C", "D"],
      3 => ["P"]
    }

    expected_output = {
      1 => ["M"],
      2 => ["C"],
      3 => ["P", "Z", "N", "D"]
    }

    expect(subject.move_crates(formatted_instructions, crate_arrangement)).to eq expected_output
  end

  it "correctly identifies the top crates" do
    crate_arrangement = {
      1 => ["C"],
      2 => ["M"],
      3 => ["P", "D", "N", "Z"]
    }

    expected_output = "CMZ"

    expect(subject.get_top_crates(crate_arrangement)).to eq expected_output
  end
end
