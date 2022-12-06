class MarkerDetector
  def get_formatted_signal(signal)
    signal.split("")
  end

  def get_marker_position(formatted_signal)
    formatted_signal.each_with_index do |letter, i|
      next_four = formatted_signal[i..i+3]
      counts = [
        next_four.count(next_four[0]),
        next_four.count(next_four[1]),
        next_four.count(next_four[2]),
        next_four.count(next_four[3])
      ]

      if counts.max() == 1
        return i+4
      end
    end
  end
end

# detector = MarkerDetector.new()
# signal = File.read("data.txt")
# formatted_signal = detector.get_formatted_signal(signal)

# p detector.get_marker_position(formatted_signal)

