class MessageDetector
  def get_formatted_signal(signal)
    signal.split("")
  end

  def get_marker_position(formatted_signal)
    formatted_signal.each_with_index do |letter, i|
      next_fourteen = formatted_signal[i..i+13]
      counts = []
      counter = 0
      14.times do 
        counts << next_fourteen.count(next_fourteen[counter])
        counter += 1
      end

      if counts.max() == 1
        return i+14
      end
    end
  end
end

# detector = MessageDetector.new()
# signal = File.read("data.txt")
# formatted_signal = detector.get_formatted_signal(signal)

# p detector.get_marker_position(formatted_signal)
