def get_max_calories
  file = File.open("data_puzzle_1.txt")
  calorie_data = file.read.split("\n\n")

  calorie_data.map! do |elf_inventory|
    elf_inventory.split("\n").map { |item_calories| item_calories.to_i }.sum
  end

  return calorie_data.max()
end

puts get_max_calories()
