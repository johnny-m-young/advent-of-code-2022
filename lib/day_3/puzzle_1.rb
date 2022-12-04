class PriorityAdder
  def get_formatted_data(data)
    data.split("\n").map { |pack| 
      pack_size = pack.length / 2
      pack_one = pack.slice(0..(pack_size-1))
      pack_two = pack.slice(pack_size..-1)
      pack = [pack_one, pack_two]
    }
  end

  def get_shared_item_type(data)
    shared_items = []
    data.each do |pack|
      for item in pack.first.split("") do
        if pack.last.include?(item)
          shared_items << item
          break
        end
      end
    end

    return shared_items
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

# adder = PriorityAdder.new()
# data = File.read("data.txt")
# formatted_data = adder.get_formatted_data(data)
# shared_item_type = adder.get_shared_item_type(formatted_data)
# sum_of_priorities = adder.sum_item_priorities(shared_item_type)

# p sum_of_priorities
