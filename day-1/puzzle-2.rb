def get_elf_calories
  file = File.open("data-puzzle-1.txt")
  calorie_data = file.read.split("\n\n")

  calorie_data.map! do |elf_inventory|
    elf_inventory.split("\n").map { |item_calories| item_calories.to_i }.sum
  end

  return calorie_data
end

def get_top_three_elves(calorie_data)
  top_three_elves = []

  3.times do
    top_elf = calorie_data.max()
    top_elf_index = calorie_data.find_index(top_elf)

    top_three_elves << top_elf
  
    calorie_data.delete_at(top_elf_index)
  end

  return top_three_elves
end

calorie_data = get_elf_calories

top_three_elves = get_top_three_elves(calorie_data)

p top_three_elves.sum
