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
          if (((value.is_a? String) == true) && (value.casecmp(output[index+1]) > 0)) || (((value.is_a? String) == false) && ((value <=> output[index+1]) > 0))
            output[index], output[index+1] = output[index+1], value
            swapped = true
          end
        end
      end
    end
    output
  end

  def self.bubble_sort_by(input, &block)
    output = input
    if (output.length > 1)
      swapped = true
      while swapped == true
        swapped = false
        output.each_with_index.map do |value, index|
          break if (index+1) >= output.length
          compare = block.call(value, output[index+1])
          if compare > 0
            output[index], output[index+1] = output[index+1], value
            swapped = true
          end
        end
      end
    end
    output
  end



end
