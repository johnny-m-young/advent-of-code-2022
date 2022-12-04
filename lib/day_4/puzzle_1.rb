class OverlapFinder
  def get_formatted_data(data)
    data = data.split("\n").map { |datum| datum.split(",").map { |elf| elf.split("-") } }
  end

  def get_overlaps(formatted_data)
    overlaps = 0
    for pair in formatted_data do
      a = pair.first.first.to_i
      b = pair.first.last.to_i
      c = pair.last.first.to_i
      d = pair.last.last.to_i

      if (a >= c && b <= d) || (c >= a && d <= b)
        overlaps += 1
      end
    end

    return overlaps
  end
end

# overlap_finder = OverlapFinder.new()
# formatted_data = overlap_finder.get_formatted_data(File.read("data.txt"))
# p overlap_finder.get_overlaps(formatted_data)
