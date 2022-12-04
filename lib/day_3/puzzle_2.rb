class NewPriorityAdder
  def get_formatted_data(data)
    data = data.split("\n")
    formatted_data = []

    count = 0
    for datum in data
      if count == 0
        builder_array = []
        builder_array << datum
      elsif count % 3 == 0
        formatted_data << builder_array
        builder_array = []
        builder_array << datum
      elsif count == data.length - 1
        builder_array << datum
        formatted_data << builder_array
      else
        builder_array << datum
      end

      count += 1
    end

    return formatted_data
  end

  def get_badges(formatted_data)
    badges = []
    formatted_data.each do |pack|
      for item in pack.first.split("") do
        if pack[1].include?(item) && pack[2].include?(item)
          badges << item
          break
        end
      end
    end

    return badges
  end

  def sum_item_priorities(items)
    lower_case = "abcdefghijklmnopqrstuvwxyz"
    upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    sum = 0

    items.each do |item|
      if lower_case.include?(item)
        sum += item.ord - 96
      elsif upper_case.include?(item)
        sum += item.ord - 38
      end
    end

    return sum
  end
end

# new_adder = NewPriorityAdder.new()
# formatted_data = new_adder.get_formatted_data(File.read("data.txt"))
# badges = new_adder.get_badges(formatted_data)
# priority_sum = new_adder.sum_item_priorities(badges)

# p priority_sum
