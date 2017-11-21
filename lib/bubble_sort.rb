#lib/bubble_sort.rb
class BubbleSort

  def self.bubble_sort(input)
    output = input
    if (output.length > 1)
      swapped = true
      while swapped == true
        swapped = false
        output.each_with_index.map do |value, index|
          break if (index+1) >= output.length
          if value > output[index+1]
            output[index], output[index+1] = output[index+1], value
            swapped = true
          end
        end
      end
    end
    output
  end

end
