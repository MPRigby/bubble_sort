#spec/bubble_sort_spec.rb
require "bubble_sort"

describe BubbleSort do

  describe ".bubble_sort" do
    context "given and empty array" do
      it "returns an empty array" do
        expect(BubbleSort.bubble_sort([])).to eql([])
      end
    end

    context "given an array with one value" do
      it "returns the array" do
        expect(BubbleSort.bubble_sort([5])).to eql([5])
      end
    end

    context "given an array with two values, the second value being higher than the first" do
      it "returns the array without change" do
        expect(BubbleSort.bubble_sort([5, 20])).to eql([5, 20])
      end
    end

    context "given an array with two values, the first value being higher than the second" do
      it "flips the order of the entries" do
        expect(BubbleSort.bubble_sort([30, 9])).to eql([9, 30])
      end
    end

    context "given an array with three values, where the smallest value is last" do
      it "brings the last value to the begining of the array" do
        expect(BubbleSort.bubble_sort([45, 95, 10])).to eql([10, 45, 95])
      end
    end

    context "given a large array of jumbled values" do
      it "sorts in ascending order" do
        expect(BubbleSort.bubble_sort([45, 2, 65, 95, 15, 99, 150, 145, 800, 84, 10])).to eql([2, 10, 15, 45, 65, 84, 95, 99, 145, 150, 800])
      end
    end

    context "given an array of strings" do
      it "sorts in alphabetical order" do
        expect(BubbleSort.bubble_sort(["string", "Hey", "hello there", "What's up?"])).to eql(["hello there", "Hey", "string", "What's up?"])
      end
    end
  end

  describe ".bubble_sort_by" do
    let(:compare) do
      Proc.new do |left, right|
        if (left.is_a? String) == true && (right.is_a? String) == true
          left.downcase <=> right.downcase
        else
          left <=> right
        end
      end
    end

    context "given and empty array" do
      it "returns an empty array" do
        expect(BubbleSort.bubble_sort_by([], &compare)).to eql([])
      end
    end

    context "given an array with one value" do
      it "returns the array" do
        expect(BubbleSort.bubble_sort_by([5], &compare)).to eql([5])
      end
    end

    context "given an array with two values, the second value being higher than the first" do
      it "returns the array without change" do
        expect(BubbleSort.bubble_sort_by([5, 20], &compare)).to eql([5, 20])
      end
    end

    context "given an array with two values, the first value being higher than the second" do
      it "flips the order of the entries" do
        expect(BubbleSort.bubble_sort_by([30, 9], &compare)).to eql([9, 30])
      end
    end

    context "given an array with three values, where the smallest value is last" do
      it "brings the last value to the begining of the array" do
        expect(BubbleSort.bubble_sort_by([45, 95, 10], &compare)).to eql([10, 45, 95])
      end
    end

    context "given a large array of jumbled values" do
      it "sorts in ascending order" do
        expect(BubbleSort.bubble_sort_by([45, 2, 65, 95, 15, 99, 150, 145, 800, 84, 10], &compare)).to eql([2, 10, 15, 45, 65, 84, 95, 99, 145, 150, 800])
      end
    end

    context "given an array of strings" do
      it "sorts in alphabetical order" do
        expect(BubbleSort.bubble_sort_by(["string", "Hey", "hello there", "What's up?"], &compare)).to eql(["hello there", "Hey", "string", "What's up?"])
      end
    end




  end

end
