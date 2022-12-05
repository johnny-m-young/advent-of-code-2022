class NewTopCrateFinder
  def get_formatted_instructions(instructions)
    instructions = instructions.split("\n")
    formatted_instructions = []
    for line in instructions do
      instruction_hash = {}
      line = line.split(" ")
      instruction_hash[:qty] = line[1].to_i
      instruction_hash[:from] = line[3].to_i
      instruction_hash[:to] = line[-1].to_i
      formatted_instructions << instruction_hash
    end

    return formatted_instructions
  end

  def move_crates(formatted_instructions, crate_arrangement)
    formatted_instructions.each do |instruction|
      from = crate_arrangement[instruction[:from]]
      to = crate_arrangement[instruction[:to]]
      qty = instruction[:qty]

      to.concat(from[-qty..-1])
      qty.times { from.pop }
    end

    return crate_arrangement
  end

  def get_top_crates(crate_arrangement)
    top_crates = ""
    crate_arrangement.each do |column, stack|
      top_crates += stack.pop
    end

    return top_crates
  end
end

# crate_arrangement = { 
#   1 => ["B", "L", "D", "T", "W", "C", "F", "M"], 
#   2 => ["N", "B", "L"],
#   3 => ["J", "C", "H", "T", "L", "V"],
#   4 => ["S", "P", "J", "W"],
#   5 => ["Z", "S", "C", "F", "T", "L", "R"],
#   6 => ["W", "D", "G", "B", "H", "N", "Z"],
#   7 => ["F", "M", "S", "P", "V", "G", "C", "N"],
#   8 => ["W", "Q", "R", "J", "F", "V", "C", "Z"],
#   9 => ["R", "P", "M", "L", "H"]
# }

# finder = NewTopCrateFinder.new()
# formatted_instructions = finder.get_formatted_instructions(File.read("instructions.txt"))
# new_crate_arrangement = finder.move_crates(formatted_instructions, crate_arrangement)

# p finder.get_top_crates(new_crate_arrangement)
